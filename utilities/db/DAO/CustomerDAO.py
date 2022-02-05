import utilities.db.DTO.Customer as Customer
from utilities.db.db_manager import DBManager

class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]


class CustomerDAO(metaclass=Singleton):
    def __init__(self):
        self.db_manager = DBManager()

    def create(self, customer: Customer) -> bool:  # returns true if customer was created
        ans = self.db_manager.commit("""
            INSERT INTO customers ( Email, FullName, JoinDate, Password, PhoneNumber, AddressCity, AddressStreet, AddressApartmentNum, AddressPostalCode)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (customer.email, customer.fullName, customer.joinDate, customer.password, customer.phoneNumber,
              customer.city, customer.street, customer.apartmentNum, customer.postalCode))
        return ans == 1


    def find_by_email(self, email: str) -> Customer:
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE Email = %s
        """, (email,))
        if ans is None:
            return None
        ans = ans[0]
        return Customer.Customer(ans[0], ans[1], ans[2], ans[3], ans[4], ans[5], ans[6], ans[7], ans[8], ans[9], ans[10], ans[11], ans[12], ans[13], ans[14])

    def find_by_name(self, name: str):
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE FullName = %s
        """, (name,))
        if ans is None:
            return None
        return [Customer(i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14]) for i in ans]

    def login(self, email: str, password: str) -> Customer:
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE Email = %s AND Password = %s
        """, (email, password))
        if len(ans) == 0:
            return False
        ans = ans[0]
        return Customer.Customer(ans[0], ans[1], ans[2], ans[3], ans[4], ans[5], ans[6], ans[7], ans[8], ans[9], ans[10], ans[11], ans[12], ans[13], ans[14])

    def update_details(self, fullName, password, phoneNumber, addressCity, addressStreet, addressApartmentNum, addressPostalCode, email) -> bool:
        ans = self.db_manager.commit("""
            UPDATE customers 
            SET fullName = %s, password = %s, phoneNumber = %s, addressCity = %s, addressStreet = %s,
                addressApartmentNum = %s, addressPostalCode = %s
            WHERE Email = %s
        """, (fullName, password, phoneNumber, addressCity, addressStreet, addressApartmentNum, addressPostalCode, email))
        return ans == 1

    def update_card_info(self, NameOnCard, CardOwnerID, CreditCardNumber, ExpMonth, ExpYear, CVV, email) -> bool:
        ans = self.db_manager.commit("""
            UPDATE customers 
            SET NameOnCard = %s, CardOwnerID = %s, CreditCardNumber = %s, ExpMonth = %s, ExpYear = %s, CVV = %s
            WHERE Email = %s
        """, (NameOnCard, CardOwnerID, CreditCardNumber, ExpMonth, ExpYear, CVV, email))
        return ans == 1

    def retrieve_entry_tickets(self, email):
        ans = self.db_manager.fetch("""
            select TicketId, u.OrderID, TicketType, Price, o.PurchaseDate, NumOfEntriesLeft
            from userentrytickets u
            join orders o
                on u.OrderID = o.OrderId
            where u.CustomerEmail = %s
            order by TicketId desc
        """, (email,))
        return ans

    def retrieve_workouts(self, email):
        ans = self.db_manager.fetch("""
            select w.TicketId, w.WorkoutType, w.WorkoutDT
            from workoutsintickets w
            join userentrytickets u
                on u.TicketId = w.TicketId
            where CustomerEmail = %s
            order by workoutDT desc
        """, (email,))
        return ans
