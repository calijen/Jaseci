import from byllm.lib {Model, Image}

#configure model with custom parameters
glob creative_model = Model(
    model_name="gemini/gemini-2.5-flash",
    temperature = 0.9, # more creative
    max_tokens = 500,
    verbose = True # Show prompts for debugging
);

glob precise_model = Model(
    model_name = "gemini/gemini-2.5-flash",
    temperature = 0.1,
    max_tokens = 200
);

"""Generate creative story from image."""
def create_story(image: Image) -> str by creative_model();

"""Generate factual information from image."""
def extract_facts(image: Image) -> str by precise_model();

with entry{
    story = create_story(Image("photo.jpg"));
    print("Creative Story:", story);

    facts = extract_facts(Image("photo.jpg"));
    print("Extracted Facts:", facts);
}

