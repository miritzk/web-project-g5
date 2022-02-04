import utilities.db.DTO.Orders as Orders
# import utilities.db.DTO.Customer as Customer
from utilities.db.db_manager import DBManager

class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]

class OrdersDAO(metaclass=Singleton):
    def __init__(self):
        self.db_manager = DBManager()

    def create(self, customer, order: Orders.Order):
        ans = self.db_manager.commit("""
        Insert into orders (CustomerEmail, PurchaseDate)
        values (%s, %s)
        """, (customer.email, order.PurchaseDate))
        return ans == 1

    # def update_expiry_date(self, order: Orders.Order, exp_month: int, exp_year: int):
    #     ans = self.db_manager.commit("""
    #     Update orders
    #     set ExpMonth = %s, ExpYear = %s
    #     where PaymentReference = %s
    #     """, (exp_month, exp_year, order.paymentReference))
    #     return ans == 1

    def get_orders_by_user(self, customer):
        ans = self.db_manager.fetch("""
        Select * from orders
        where CustomerEmail = %s
        """, (customer.email,))
        if ans:
            return [Orders.Order(row[0], row[1], row[2]) for row in ans]