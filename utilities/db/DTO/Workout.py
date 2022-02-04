import utilities.db.DAO.workoutsDAO as WorkoutsDao

class Workout:
    def __init__(self, workoutType, dateTime, spotsLeft, color, instructorName):
        self.workoutType = workoutType
        self.dateTime = dateTime
        self.spotsLeft = spotsLeft
        self.color = color
        self.instructorName = instructorName

def getWorkoutsByDates(startDate, endDate):
    return WorkoutsDao.WorkoutsDAO().getWorkoutsByDates(startDate, endDate)

def canUserOrder(email):
    if email == '' or email is None:
        return {'personal':False,'other':False}
    else:
        return WorkoutsDao.WorkoutsDAO().canOrder(email)

def order_class(email, workoutTime, workoutType):
    if workoutType == 'Personal Workout':
        WorkoutsDao.WorkoutsDAO().order_class_personal(email, workoutTime, workoutType)
    else:
        WorkoutsDao.WorkoutsDAO().order_class_other(email, workoutTime, workoutType)