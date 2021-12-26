from flask import Blueprint, render_template

# about blueprint definition
contact_page = Blueprint('contact_page', __name__, static_folder='static', static_url_path='/contact_page', template_folder='templates')


# Routes
@contact_page.route('/contact_page')
def index():
    return render_template('contact_page.html')
