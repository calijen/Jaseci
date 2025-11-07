import from byllm.lib{Model, Image}
glob vision_llm = Model(model_name="gemini/gemini-2.5-flash");

obj ImageCaptioner {
    has name: str;

    """ Generate a brief, descriptive caption for the given image."""
    def caption_image(image: Image) -> str by vision_llm();


    """Extract specific objects visible in the image"""
    def identify_objects(image: Image) -> str by vision_llm();

    """Determine the mood or atmosphere of the image."""
    def analyze_mood(image: Image) -> str by vision_llm();

    """Determine the mood or atmosphere of the image."""
    def analyze_mood(image: Image) -> str by vision_llm();

}


with entry{
    captioner = ImageCaptioner(name="AI photo Assistant");
    image = Image("photo.jpg");

    #Generate basic caption
    caption = captioner.caption_image(image);
    print(f"Caption: {caption}");

    #identify objects
    objects = captioner.identify_objects(image);
    print(f"Objects found: {objects}");

    #analyze mood
    mood = captioner.analyze_mood(image);
    print(f"Mood: {mood}");
}