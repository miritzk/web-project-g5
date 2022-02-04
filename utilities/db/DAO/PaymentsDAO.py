import utilities.db.DTO.Payments as Payments
# import utilities.db.DTO.Customer as Customer
from utilities.db.db_manager import DBManager

class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]

class PaymentsDAO(metaclass=Singleton):
    def __init__(self):
        self.db_manager = DBManager()

    def create(self, customer, payment : Payments.Payments):
        ans =  self.db_manager.commit("""
        Insert into payments (CustomerEmail, NameOnCard, CreditCardNumber, ExpMonth , ExpYear, CVV, ID)
        values (%s, %s, %s, %s, %s, %s, %s)
        """, (customer.email, payment.NameOnCard, payment.CreditCardNumber, payment.ExpMonth, payment.ExpYear, payment.CVV, payment.ID))
        return  ans == 1

    def update_expiry_date(self,payment: Payments.Payments , exp_month: int, exp_year: int):
        ans = self.db_manager.commit("""
        Update payments
        set ExpMonth = %s, ExpYear = %s
        where PaymentReference = %s
        """, (exp_month, exp_year, payment.paymentReference))
        return ans == 1

    def getPaymentsByUser(self, customer):
        ans = self.db_manager.fetch("""
        Select * from payments
        where CustomerEmail = %s
        """, (customer.email,))
        if ans:
            return [Payments.Payments(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7]) for row in ans]