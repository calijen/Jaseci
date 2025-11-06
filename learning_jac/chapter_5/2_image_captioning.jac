import from byllm.lib{Model, Image}
glob llm = Model(model_name="gemini/gemini-2.5-flash");

""" Generate a detailed caption for the given image."""
def caption_image(image: Image) -> str by llm();


"""Write an inspiring spoken word inspired by the image."""
def write_poem_from_image(image: Image) -> str by llm();

with entry{
    spoken_word = write_poem_from_image(Image("photo.jpg"));
    print(spoken_word);
}