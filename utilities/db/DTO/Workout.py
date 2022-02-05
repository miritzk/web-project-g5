import utilities.db.DAO.workoutsDAO as WorkoutsDao

class Workout:
    def __init__(self, workoutType, dateTime, spotsLeft, color, instructorName):
        self.workoutType = workoutType
        self.dateTime = dateTime
        self.spotsLeft = spotsLeft
        self.color = color
        self.instructorName = instructorName

# get workouts of the current week
def getWorkoutsByDates(startDate, endDate):
    return WorkoutsDao.WorkoutsDAO().getWorkoutsByDates(startDate, endDate)

# checks whether a user has enough entries to book a workout (general and personal workouts)
def canUserOrder(email):
    if email == '' or email is None:
        return {'personal':False,'other':False}
    else:
        return WorkoutsDao.WorkoutsDAO().canOrder(email)

# book a workout (general and personal workouts)
def order_class(email, workoutTime, workoutType):
    if WorkoutsDao.WorkoutsDAO().check_customer_assignee(email,workoutTime,workoutType):
        if workoutType == 'Personal Workout':
            WorkoutsDao.WorkoutsDAO().order_class_personal(email, workoutTime, workoutType)
        else:
            WorkoutsDao.WorkoutsDAO().order_class_other(email, workoutTime, workoutType)
        return True
    return False