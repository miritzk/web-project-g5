from flask import Blueprint, render_template, session
from utilities.db.DTO.Customer import get_customer_by_email

# about blueprint definition
payment_page = Blueprint('payment_page', __name__, static_folder='static', static_url_path='/payment_page', template_folder='templates')


# Routes
@payment_page.route('/payment_page')
def index():
    return render_template('payment_page.html', customer=get_customer_by_email(session['user']))
