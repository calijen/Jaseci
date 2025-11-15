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

    def get_net_income() ->int{
        profit:int = self.revenue - self.expenses;
        return profit;
    }
    
 
}
#check if the company is efficient
def is_efficient(company_obj:obj) ->bool{
    if company_obj.revenue > company_obj.employees*100{
        return True;
    }else{
        return False;
    }
}

#update multiple financial attributes at once
#check if the company is profitable
#we will need to use the existing methods to update it

def apply_quarterly_adjustments(company_obj, revenue_change, expense_change)->bool{
    new_expenses 

    return company_obj.is_profitable();

}
with entry{
    Calijen=company("Calijen", "Tech",10_000, 500_000, 300_000);
    print(Calijen.is_profitable());

    Calijen.update_expenses(-600_000);
    print(Calijen.is_profitable());

    print(Calijen.get_net_income());
    print(is_efficient(Calijen));

}

