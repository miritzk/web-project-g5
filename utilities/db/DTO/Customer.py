import datetime
import utilities.db.DAO.CustomerDAO as CustomerDAO
import utilities.db.DAO.PaymentsDAO as PaymentsDAO


class Customer:
    def __init__(self, email: str, fullName: str, id: int, joinDate: datetime.date, birthday: datetime.date,
                 password: str, city: str, street: str,
                 apartmentNum: int, postalCode: str):
        self.email = email
        self.fullName = fullName
        self.id = id
        self.joinDate = joinDate
        self.birthday = birthday
        self.city = city
        self.street = street
        self.apartmentNum = apartmentNum
        self.postalCode = postalCode
        self.password = password

    def __str__(self):
        return "Customer: " + self.fullName + " email:" + self.email + " pass:" + self.password + " city:" + self.city + " street:" + self.street + " apartmentNum:" + str(
            self.apartmentNum) + " postalCode:" + str(self.postalCode) + " birthday:" + str(
            self.birthday) + " joinDate:" + str(self.joinDate)

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
        return PaymentsDAO.PaymentsDAO().getPaymentsByUser(self)


def login(email: str, password: str) -> Customer:
    return CustomerDAO.CustomerDAO().login(email, password)


def register(email: str, fullName: str, id: str, password: str, birthday: datetime.date, city: str, street: str,
             apartmentNum: int, postalCode: str) -> Customer:
    customer = Customer(email, fullName, id, datetime.date.today(), birthday, password, city, street, apartmentNum,
                        postalCode)
    if CustomerDAO.CustomerDAO().create(customer):
        return customer
    else:
        return None
