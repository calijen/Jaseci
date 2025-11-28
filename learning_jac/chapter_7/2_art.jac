obj art{
    has name:str;
    has price:int;
    has artist:str;
    has is_sold: bool = False;

    def sell_art() ->None{
        self.is_sold = True;
        print(f" The artwork {self.name} has been sold");
    }
    def get_info()-> str {
        status = "sold" if self.is_sold else "available";
        return f"The {self.price}$ {self.name} is the creative work of {self.artist}";
    }
}
with entry{
    art_piece = art(name="Fear of Darkness", price=675, artist="Missy S.", is_sold= False);

print(art_piece.get_info());
}