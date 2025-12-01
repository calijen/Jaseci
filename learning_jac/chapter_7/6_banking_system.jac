#*
Design a BankAccount object that securely stores a customer's balance. 
The balance should not be directly modifiable from outside the object.


*#

obj BankAccount {
    has :priv balance:float = 0.0;

    def deposit(amount: float) ->float{
         self.balance += amount;
        return self.balance;
    }

    def withdraw(amount:float) ->bool{
        if self.balance >= amount{
            self.balance -= amount;
            return True;
        }else{
            print("Error! Insufficient funds!");
            return False;
        }
    }
    def get_balance()->float{
        return self.balance;
    

    }
}
with entry{
    equity = BankAccount();
    deposit_amount = 500;
    withdrawal_ammount = 700;
    #Using the Deposit Return value
    new_balance_after_deposit = equity.deposit(deposit_amount);
    print(f"Transaction sucessful! Deposited {deposit_amount}");
    
    #Using the withdrawal return status
    balance_before_failed_withdrawal = equity.get_balance();
    is_successful = equity.withdraw(withdrawal_ammount);
    if is_successful{
        print(f"Transaction successful: Withdrew{withdrawal_ammount}");
    }else{
        print(f" Transaction failed: Tried to withdraw {withdrawal_ammount}. You only have {balance_before_failed_withdrawal}, Insufficient funds!");
    }
   
   



    
}