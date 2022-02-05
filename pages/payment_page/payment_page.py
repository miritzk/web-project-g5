from flask import Blueprint, render_template, session, request, redirect
from utilities.db.DTO.Customer import get_customer_by_email
import utilities.db.DAO.OrdersDAO as OrdersDAO

# about blueprint definition
payment_page = Blueprint('payment_page', __name__, static_folder='static', static_url_path='/payment_page', template_folder='templates')


# Routes
@payment_page.route('/payment_page')
def index():
    customer = get_customer_by_email(session['user'])
    ticketType = request.args.to_dict(flat=False).get('product')[0]
    return render_template('payment_page.html', customer=customer, ticketType=ticketType)

@payment_page.route('/payment_page/make_payment', methods=['POST'])
def make_payment():
    ticketType = request.form['ticketType']
    orderId = OrdersDAO.OrdersDAO().get_new_orderId()
    ticketInfo = OrdersDAO.OrdersDAO().get_ticketType_info(ticketType)
    numOfEntries = ticketInfo[0]
    price = ticketInfo[1]
    if OrdersDAO.OrdersDAO().create_order(orderId, session['user']):
        OrdersDAO.OrdersDAO().create_user_entry_ticket(session['user'], orderId, numOfEntries, ticketType, price)
    return redirect('/')
