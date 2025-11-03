#*
A decorator is like an extra layer you wrap around a  function to add new behavior
 — maybe logging when it runs, checking if someone has permission to use it, or timing how long it takes 
 — all without changing the original code.
*#

#*
imagine you run a small coffee shop. 
You sell plain coffee — just coffee. 
But customers keep asking for extras: 
“Can I get milk?” 
“Can I get sugar?” 
“What about whipped cream?”
Instead of rewriting your entire coffee recipe everytime...
You have a system
you pour the basic coffee, 
and then you decorate it with extras before handing it to the customer. 
Milk, sugar, cream — each is an add-on that changes the flavor or presentation without touching the original recipe.
*#
import time;

def add_sugar(func: callable) -> callable{ # this is the decorator
    def wrapper() -> str{
        print("Adding sugar...");
        func();
        print("Enjoy your sweet coffee!");

    }
    return wrapper;
}
def add_milk(func: callable) -> callable{
    def wrapper() -> str{
         print("Adding milk...");
         func();
         print("Smooth and creamy!");


    }
    return wrapper;
   

}
 @add_milk
 @add_sugar # now we atach the decorator to the original function
    def make_coffee() -> str{
        print("Here's your plain coffe.");
    }

#*
simulate a superintelligent AI preparing to make a critical decision, 
but with control layers—each decorator adding one piece of safety, alignment, or performance enhancement.
*#

#You add a control decorator so that the AI doesn't just do what it wants

def capability_control( approved: bool = False) -> callable{
    def decorator(func:callable) -> callable{
        def wrapper(*args:any, **kwargs:any) -> callable{
            if not approved {
                print("System check failed. Capability not yet approved.");
                return None;
            } else {
                print("Capabilities verified. Proceeding.");
                return func(*args, **kwargs);
            }
            return wrapper;
        }
        return decorator;
    }
}
@capability_control(approved = True)
def make_decision() -> str{ #this is the original function..
    print("Evaluating universe... making optimal choice.");
}
with entry{
  make_decision();
}
