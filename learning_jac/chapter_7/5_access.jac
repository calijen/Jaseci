#*
Public members are accessible from anywhere. 
This is the default behavior in Jac, so the :pub keyword is optional but can be used for clarity.
*#

obj PublicExample{
    # this attribute is public by default
    has: pub public_property: str;
    #Explicitly marking a method as public
    def:pub public_method() ->str{
        return "This is a Public method";
    }
}
#*
As far as I am concerned... This shii doesn't work
Private members
Can only be accessed from within the object itself
*#
obj PrivateExample{
    has:priv private_property: str;
    has:priv another_private_property: int;

    def: priv private_method() -> str{
        return "This is a private method";
    }
    def :pub public_method_2() ->str{
        return self.private_method();
    }
}

#*
Protected access
accessible within the object that defines them and within any of its subclasses
*#

obj protected_example {
    has: protect protected_property: str = "Protected";
    has: protect protected_list: list[int] = [];
    has: protect protected_dict: dict[str, int] = {"Key":1};

    def :protect protected_method() ->str{
        return "This is a protected method";
    }
}

obj SubProtectedExample(protected_example){
    def :pub public_method() ->str{
        return self.protected_method();
    }
}
with entry{
    # example = PublicExample(public_property="Hello");
    # print(example.public_method());
    # print(example.public_property);

    # example1 = PrivateExample(private_property ="Jenelle", another_private_property=45);
    # print(example1.public_method_2());
    # print(example1.private_method());

    example = SubProtectedExample();
    print(example.public_method());
    print(example.protected_property);
    print(example.protected_list);
    print(example.protected_dict);
}

