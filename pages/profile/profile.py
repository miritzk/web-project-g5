from flask import Blueprint, render_template, request,make_response
from utilities.db.DTO.Customer import update_details
import json
# about blueprint definition
profile = Blueprint('profile', __name__, static_folder='static', static_url_path='/profile', template_folder='templates')


# Routes

@profile.route('/profile/update_details', methods=['POST'])
def updateDetails():
    data = json.loads(request.data)
    update_details(data['fullName'],data['password'],data['phoneNumber'],data['addressCity'],data['addressStreet'],data['addressApartmentNum'],data['addressPostalCode'],data['email'])
    return make_response('', 200)

@profile.route('/profile', methods=['GET'])
def index():
    return render_template('profile.html')

