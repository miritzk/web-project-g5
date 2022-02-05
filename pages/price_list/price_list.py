from flask import Blueprint, render_template
import utilities.db.DAO.workoutsDAO as WorkoutsDAO

# about blueprint definition
price_list = Blueprint('price_list', __name__, static_folder='static', static_url_path='/price_list', template_folder='templates')


# Routes
@price_list.route('/price_list')
def index():
    return render_template('price_list.html', workouts=WorkoutsDAO.WorkoutsDAO().get_workout_price_list())

