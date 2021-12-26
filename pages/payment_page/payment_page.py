from flask import Blueprint, render_template

# about blueprint definition
payment_page = Blueprint('payment_page', __name__, static_folder='static', static_url_path='/payment_page', template_folder='templates')


# Routes
@payment_page.route('/payment_page')
def index():
    return render_template('payment_page.html')
