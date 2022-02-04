class Payments:
    def __init__(self, paymentReference: int, CustomerEmail: str, NameOnCard: str, CreditCardNumber: str, ExpMonth: int,
                 ExpYear: int, CVV: int, ID: float):
        self.paymentReference = paymentReference
        self.CustomerEmail = CustomerEmail
        self.NameOnCard = NameOnCard
        self.CreditCardNumber = CreditCardNumber
        self.ExpMonth = ExpMonth
        self.ExpYear = ExpYear
        self.CVV = CVV
        self.ID = ID
