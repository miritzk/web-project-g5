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

    # a new orderId for a new purchase
    def get_new_orderId(self):
        ans = self.db_manager.fetch("""
        select max(OrderId)+1 as newOrderId
        from orders
        """)
        return ans[0][0]

    # get the num_of_entries and price for the desired type of ticket to buy
    def get_ticketType_info(self, TicketType):
        ans = self.db_manager.fetch("""
        select NumOfEntries, price
        from entryTickets
        where TicketType = %s
        """, (TicketType,))
        return [ans[0][0], ans[0][1]]

    # create a new order in the db
    def create_order(self, orderId, customerEmail):
        ans = self.db_manager.commit("""
        insert into orders values (%s, %s, SYSDATE());
        """, (orderId, customerEmail))
        return ans == 1

    # create a new entry ticket in the db
    def create_user_entry_ticket(self, customerEmail, orderId, NumOfEntries, TicketType, price):
        ans = self.db_manager.commit("""
        insert into userEntryTickets (CustomerEmail, OrderId, NumOfEntriesLeft, TicketType, Price) values (%s, %s, %s, %s, %s);
        """, (customerEmail, orderId, NumOfEntries, TicketType, price))
        return ans == 1

