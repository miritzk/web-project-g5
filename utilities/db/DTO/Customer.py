import datetime
import utilities.db.DAO.CustomerDAO as CustomerDAO
import utilities.db.DAO.OrdersDAO as PaymentsDAO


class Customer:
    def __init__(self, email: str, fullName: str, joinDate: datetime.date, password: str,
                 phoneNumber: str, city: str, street: str, apartmentNum: int, postalCode: str,
                 NameOnCard=None, CreditCardNumber=None, ExpMonth=None, ExpYear=None, CVV=None, CardOwnerID=None):
        self.email = email
        self.fullName = fullName
        self.joinDate = joinDate
        self.password = password
        self.phoneNumber = phoneNumber
        self.city = city
        self.street = street
        self.apartmentNum = apartmentNum
        self.postalCode = postalCode
        self.NameOnCard = NameOnCard
        self.CreditCardNumber = CreditCardNumber
        self.ExpMonth = ExpMonth
        self.ExpYear = ExpYear
        self.CVV = CVV
        self.CardOwnerID = CardOwnerID


    def __str__(self):
        return "Customer: " + self.fullName + " email:" + self.email + " pass:" + self.password + " city:" + self.city + " street:" + self.street + " apartmentNum:" + str(
            self.apartmentNum) + " postalCode:" + str(self.postalCode) + " phoneNumber:" + str(
            self.phoneNumber) + " joinDate:" + str(self.joinDate)

    def changePassword(self, newPassword: str) -> bool:
        self.password = newPassword
        return CustomerDAO.CustomerDAO().change_password(self.email, newPassword)

    def changeAddress(self, city: str, street: str, apartmentNum: int, postalCode: str) -> bool:
        self.city = city
        self.street = street
        self.apartmentNum = apartmentNum
        self.postalCode = postalCode
        return CustomerDAO.CustomerDAO().change_address(self.email, city, street, apartmentNum, postalCode)

    @property
    def payments(self):
        return PaymentsDAO.OrdersDAO().getPaymentsByUser(self)


def update_details(fullName, password, phoneNumber, addressCity, addressStreet, addressApartmentNum, addressPostalCode, email):
    return CustomerDAO.CustomerDAO().update_details(fullName, password, phoneNumber, addressCity, addressStreet, addressApartmentNum, addressPostalCode, email)

def login(email: str, password: str) -> Customer:
    return CustomerDAO.CustomerDAO().login(email, password)


def register(email: str, fullName: str, password: str, phoneNumber: str, city: str, street: str,
             apartmentNum: int, postalCode: str) -> Customer:
    customer = Customer(email, fullName, datetime.date.today(), password, phoneNumber, city, street, apartmentNum,
                        postalCode)
    if CustomerDAO.CustomerDAO().create(customer):
        return customer
    else:
        return None