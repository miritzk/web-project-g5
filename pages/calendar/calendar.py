from flask import Blueprint, render_template, request, session
from utilities.db.DTO.Workout import getWorkoutsByDates, canUserOrder, order_class
import json

# about blueprint definition
calendar = Blueprint('calendar', __name__, static_folder='static', static_url_path='/calendar', template_folder='templates')


# Routes
@calendar.route('/calendar/get_events', methods=["POST"])
def get_events():
    data = json.loads(request.data)
    return {
        "events": [vars(i) for i in getWorkoutsByDates(data['startTime'], data['endTime'])],
        "canOrder": canUserOrder(session['user'])
    }

@calendar.route('/calendar/order_class', methods=["POST"])
def order_class_route():
    data = json.loads(request.data)
    print(data['workoutTime'])
    order_class(session['user'], data['workoutTime'], data['workoutType'])
    return {}

@calendar.route('/calendar')
def index():
    return render_template('calendar.html')
