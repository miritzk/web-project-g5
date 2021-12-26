from flask import Blueprint, render_template

# about blueprint definition
recorded_workouts = Blueprint('recorded_workouts', __name__, static_folder='static', static_url_path='/recorded_workouts', template_folder='templates')


# Routes
@recorded_workouts.route('/recorded_workouts')
def index():
    return render_template('recorded_workouts.html')
