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
            INSERT INTO customers ( Email, FullName, ID, JoinDate, Birthday, Password, AddressCity, AddressStreet, AddressApartmentNum, AddressPostalCode)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (customer.email, customer.fullName, customer.id, customer.joinDate, customer.birthday, customer.password,
              customer.city, customer.street, customer.apartmentNum, customer.postalCode))
        return ans == 1

    def find_by_id(self, id: str) -> Customer:
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE ID = %s
        """, (id,))
        if ans is None:
            return None
        ans = ans[0]
        return Customer.Customer(ans[0], ans[1], ans[2], ans[3], ans[4], ans[5], ans[6], ans[7], ans[8], ans[9])

    def find_by_email(self, email: str) -> Customer:
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE Email = %s
        """, (email,))
        if ans is None:
            return None
        ans = ans[0]
        return  Customer.Customer(ans[0], ans[1], ans[2], ans[3], ans[4], ans[5], ans[6], ans[7], ans[8], ans[9])

    def find_by_name(self, name: str) -> list[Customer]:
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE FullName = %s
        """, (name,))
        if ans is None:
            return None
        return [Customer(i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9]) for i in ans]

    def login(self, email: str, password: str) -> Customer:
        ans = self.db_manager.fetch("""
            SELECT * FROM customers WHERE Email = %s AND Password = %s
        """, (email, password))
        if ans is None:
            return None
        ans = ans[0]
        return  Customer.Customer(ans[0], ans[1], ans[2], ans[3], ans[4], ans[5], ans[6], ans[7], ans[8], ans[9])

    def change_password(self, email: str, password: str) -> bool:
        ans = self.db_manager.commit("""
            UPDATE customers SET Password = %s WHERE Email = %s
        """, (password, email))
        return ans == 1

    def change_address(self, email: str, city: str, street: str, apartmentNum: str, postalCode: str) -> bool:
        ans = self.db_manager.commit("""
            UPDATE customers SET AddressCity = %s, AddressStreet = %s, AddressApartmentNum = %s, AddressPostalCode = %s WHERE Email = %s
        """, (city, street, apartmentNum, postalCode, email))
        return ans == 1

