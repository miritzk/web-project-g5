from flask import Blueprint, render_template, request, make_response, session
from utilities.db.DTO.Customer import update_details, update_card_info, get_customer_by_email
import json
# about blueprint definition
profile = Blueprint('profile', __name__, static_folder='static', static_url_path='/profile', template_folder='templates')


# Routes
@profile.route('/profile/update_details', methods=['POST'])
def updateDetails():
    data = json.loads(request.data)
    update_details(data['fullName'],data['password'],data['phoneNumber'],data['addressCity'],data['addressStreet'],data['addressApartmentNum'],data['addressPostalCode'],data['email'])
    return make_response('', 200)

@profile.route('/profile/update_card_info', methods=['POST'])
def updateCardInfo():
    data = json.loads(request.data)
    update_card_info(data['NameOnCard'],data['CardOwnerID'],data['CreditCardNumber'],data['ExpMonth'],data['ExpYear'],data['CVV'], session['user'])
    return make_response('', 200)

@profile.route('/profile', methods=['GET'])
def index():
    # print(vars(get_customer_by_email(session['user'])))
    return render_template('profile.html', customer=get_customer_by_email(session['user']))

