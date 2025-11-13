obj company{

    has name: str;
    has industry: str;
    has employees: int;
    has revenue: int;
    has expenses: int;

    def update_revenue(new_revenue:int) ->Any{
        self.revenue = new_revenue;
    }

    def update_expenses(new_expenses:int) ->None{
        try{
            if new_expenses < 0{
                raise ValueError ("Value cannot be negative");
            } 
            self.expenses = new_expenses;
        }except ValueError as e{
            print(f"Error: {e}");
            return 0.0;
        }
     
    }

    def is_profitable() ->bool{
        if self.revenue > self.expenses{
            return True;
        }else{
            return False;
        }
    }
 
}

with entry{
    Calijen=company("Calijen", "Tech",10, 500_000, 300_000);
    print(Calijen.is_profitable());

    Calijen.update_expenses(-600_000);
    print(Calijen.is_profitable());
}