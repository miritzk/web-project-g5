from utilities.db.db_manager import DBManager
import utilities.db.DTO.Workout as Workout


class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]


class WorkoutsDAO(metaclass=Singleton):
    def __init__(self):
        self.db_manager = DBManager()

    # get workouts schedule for populating the calendar
    def getWorkoutsByDates(self, startDate, endDate):
        ans = self.db_manager.fetch("""
        select w.*,
               i.FullName,
               case when w.WorkoutType = 'Classical Pilates' then 'rgb(155, 158, 163)'
                    when w.WorkoutType = 'Mat Pilates' then 'rgb(231, 55, 84)'
                    when w.WorkoutType = 'Reformer Pilates' then '#abbdb0'
                    when w.WorkoutType = 'Prenatal Pilates' then '#1a759f'
                    when w.WorkoutType = 'Personal Workout' then '#e76f51'
                   end as color,
               1 as duration,
               maxSpots-sum(case when TicketId is not null then 1 else 0 end) as spotsLeft
        from workouts w
        left join workoutsintickets t
          on t.WorkoutDT = w.DateTime
        join instructors i
          on w.InstructorEmail = i.Email
        where DateTime >= %s
          and DateTime <= %s
        group by w.WorkoutType, w.DateTime, w.InstructorEmail, w.MaxSpots;
        """, (startDate, endDate))
        return [Workout.Workout(i[0], i[1], i[7], i[5], i[4]) for i in ans]

    # checks whether the customer is capable to order
    def canOrder(self, email):
        ans = self.db_manager.fetch("""
        select CustomerEmail,
               sum(case when TicketType = 'Personal workout' then NumOfEntriesLeft else 0 end) as personalSpots,
               sum(case when TicketType != 'Personal workout' then NumOfEntriesLeft else 0 end) as otherSpots
        from userentrytickets
        where CustomerEmail = %s
        group by CustomerEmail
        """, (email,))
        return {'personal': ans[0][1] > 0, 'other': ans[0][2] > 0}

    # book a personal workout, by using the oldest 'personal-workout' entry ticket available
    def order_class_personal(self, email, workoutTime, workoutType):
        ticketId = self.db_manager.fetch("""
        select min(TicketId) as minTicketID
        from  userentrytickets u
        where TicketType = 'Personal workout'
        and NumOfEntriesLeft > 0
        and CustomerEmail = %s
        group by CustomerEmail
        """, (email,))
        ticketId = ticketId[0][0]

        self.db_manager.commit("""
        update userentrytickets
        set NumOfEntriesLeft = NumOfEntriesLeft-1
        where CustomerEmail = %s
        and TicketId = %s
        """, (email, ticketId))

        self.db_manager.commit("""
        insert into workoutsintickets values (%s, %s, %s);
        """, (ticketId, workoutTime, workoutType))

    # book a workout (except for personal), by using the oldest entry ticket available
    def order_class_other(self, email, workoutTime, workoutType):
        ticketId = self.db_manager.fetch("""
        select min(TicketId) as minTicketID
        from  userentrytickets u
        where TicketType != 'Personal workout'
        and NumOfEntriesLeft > 0
        and CustomerEmail = %s
        group by CustomerEmail
        """, (email,))
        ticketId = ticketId[0][0]

        self.db_manager.commit("""
        update userentrytickets
        set NumOfEntriesLeft = NumOfEntriesLeft-1
        where CustomerEmail = %s
        and TicketId = %s
        """, (email, ticketId))
        self.db_manager.commit("""
        insert into workoutsintickets values (%s, %s, %s);
        """, (ticketId, workoutTime, workoutType))

    # checks if a customer was already assigned to a specific workout
    def check_customer_assignee(self, email, workoutTime, workoutType):
        ans = self.db_manager.fetch("""
        select WorkoutDT,
               WorkoutType,
               CustomerEmail
        from workoutsintickets wt
        join userentrytickets u
            on wt.TicketId = u.TicketId
        where WorkoutDT = %s
        and WorkoutType = %s
        and CustomerEmail = %s
        """, (workoutTime, workoutType, email))
        return len(ans) == 0
