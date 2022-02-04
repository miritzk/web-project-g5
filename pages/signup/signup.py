from flask import Blueprint, render_template, request, session, redirect
from utilities.db.DTO.Customer import register

# about blueprint definition
signup = Blueprint('signup', __name__, static_folder='static', static_url_path='/signup', template_folder='templates')


# Routes
@signup.route('/signup', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        email = request.form['email']
        password = request.form['psw']
        fullName = request.form['name']
        phoneNumber = request.form['phone']
        city = request.form['city']
        street = request.form['street']
        apartmentNum = request.form['apartment']
        postalCode = request.form['postalcode']
        customer = register(email, fullName, password, phoneNumber, city, street, apartmentNum, postalCode)
        session["user"] = customer.email
        return redirect("/profile")
    return render_template('signup.html')
