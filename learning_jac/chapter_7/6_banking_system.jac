#*
Design a BankAccount object that securely stores a customer's balance. 
The balance should not be directly modifiable from outside the object.


*#

obj BankAccount {
    has :priv balance:float = 0.0;

    def deposit(amount: float) ->float{
        self.balance = balance + float;
        return balance;
    }
}
with entry{
    equity = BankAccount();
    new_balance = equity.deposit(500);
    print(f"Your current balance is {new_balance} ");
    
}