from flask import Blueprint, render_template

# about blueprint definition
calendar = Blueprint('calendar', __name__, static_folder='static', static_url_path='/calendar', template_folder='templates')


# Routes
@calendar.route('/calendar')
def index():
    return render_template('calendar.html')
