from flask import Flask, session, redirect

###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

###### Pages
# Homepage
from pages.homepage.homepage import homepage
app.register_blueprint(homepage)

# About
from pages.about.about import about
app.register_blueprint(about)

# Workouts
from pages.workouts.workouts import workouts
app.register_blueprint(workouts)

# Recorded workouts
from pages.recorded_workouts.recorded_workouts import recorded_workouts
app.register_blueprint(recorded_workouts)

# Price list
from pages.price_list.price_list import price_list
app.register_blueprint(price_list)

# Payment page
from pages.payment_page.payment_page import payment_page
app.register_blueprint(payment_page)

# Calendar
from pages.calendar.calendar import calendar
app.register_blueprint(calendar)

# Contact page
from pages.contact_page.contact_page import contact_page
app.register_blueprint(contact_page)

# Log in
from pages.login.login import login
app.register_blueprint(login)

# Signup
from pages.signup.signup import signup
app.register_blueprint(signup)

# Profile
from pages.profile.profile import profile
app.register_blueprint(profile)

# Page error handlers
from pages.page_error_handlers.page_error_handlers import page_error_handlers
app.register_blueprint(page_error_handlers)


###### Components
# Main menu
from components.main_menu.main_menu import main_menu
app.register_blueprint(main_menu)

# footer
from components.footer.footer import footer
app.register_blueprint(footer)

@app.route('/logout', methods=['GET'])
def index():
    session["user"] = ''
    return redirect('/')


if __name__ == '__main__':
    app.secret_key = '123'
    app.run(debug=True)
