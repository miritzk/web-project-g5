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

    def get_orders_by_user(self, customer):
        ans = self.db_manager.fetch("""
        Select * from orders
        where CustomerEmail = %s
        """, (customer.email,))
        if ans:
            return [Orders.Order(row[0], row[1], row[2]) for row in ans]

    def get_new_orderId(self):
        ans = self.db_manager.fetch("""
        select max(OrderId)+1 as newOrderId
        from orders
        """)
        return ans[0][0]

    def get_ticketType_info(self, TicketType):
        ans = self.db_manager.fetch("""
        select NumOfEntries, price
        from entryTickets
        where TicketType = %s
        """, (TicketType,))
        return [ans[0][0], ans[0][1]]

    def create_order(self, orderId, customerEmail):
        ans = self.db_manager.commit("""
        insert into orders values (%s, %s, SYSDATE());
        """, (orderId, customerEmail))
        return ans == 1

    def create_user_entry_ticket(self, customerEmail, orderId, NumOfEntries, TicketType, price):
        ans = self.db_manager.commit("""
        insert into userEntryTickets (CustomerEmail, OrderId, NumOfEntriesLeft, TicketType, Price) values (%s, %s, %s, %s, %s);
        """, (customerEmail, orderId, NumOfEntries, TicketType, price))
        return ans == 1

