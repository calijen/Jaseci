obj pet_shop{
    has name: str;
    has pets: list[str];
    has capacity: int;
    
    has has_vacancy: bool by postinit;

    def postinit() -> None{
        self.has_vacancy = len(self.pets) < self.capacity;
        print(f"{self.name} shop initialized with {len(self.pets)} pets");
    }

    #*
    Add a new method called add_pet(pet_name: str) to the pet_shop object.
    Requirements:
    The method must check if there is space (has_vacancy is True, or checking the length vs capacity directly).
    If there is space: Append the pet_name to self.pets, print "Added [name]", and update the has_vacancy status if the shop becomes full.
    If there is NO space: Print "Shop is full! Cannot add [name]".
    *#
    def add_pet(pet_name: str)->None{
        if self.has_vacancy{
            self.pets.append(pet_name);
            print(f"Added {pet_name}");
            self.has_vacancy = len(self.pets) < self.capacity;

        }else{
            print(f"Shop is full! Cannot add {pet_name}");
        }
    }
    #*
    Add a method called sell_pet(pet_name: str).
    Requirements:
    Check if the pet_name exists in self.pets.
    If it exists:
    Remove it from the list.
    Print "Sold [pet_name]".
    Crucial Step: Since you removed a pet, you effectively created space. You must update has_vacancy to True.
    If it does not exist:
    Print "Pet not found".
    *#
    def sell_pet(pet_name:str) ->None{
        if pet_name in self.pets{
            self.pets.remove(pet_name);
            print(f"Sold {pet_name}");
            self.has_vacancy = len(self.pets) < self.capacity;
        }else{
            print(f"{pet_name} Not found!");
        }
        
    }
    #*
    Add a method check_inventory(pet_name: str) -> bool.
    This method should not print anything.

    It should simply return True if the pet is in the list, and False if it isn't.
    *#
    def check_inventory(pet_name: str) ->bool{
        if pet_name in self.pets{
            return True;
        }else{
            return False;
        }
    }
}

with entry{
    Calijen = pet_shop (
        name="Calijen",
        pets = ["Cats", "Dogs", "Parrots"],
        capacity= 4
    );
    print(Calijen.has_vacancy);
   Calijen.add_pet("Horse");
   Calijen.add_pet("Snake");
   Calijen.sell_pet("Horse");
   if Calijen.check_inventory("Unicorn"){
    print("We have Unicorns in stock");
   }else{
    print("No Unicorns found!");
   }
}