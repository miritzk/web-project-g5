from flask import Blueprint, render_template, session, request, redirect
from utilities.db.DTO.Customer import login as login_func

# about blueprint definition
login = Blueprint('login', __name__, static_folder='static', static_url_path='/login', template_folder='templates')


# Routes
@login.route('/login', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        email = request.form['email']
        password = request.form['password']
        if login_func(email, password):
            session["user"] = email
            return redirect("/profile")
    return render_template('login.html')

