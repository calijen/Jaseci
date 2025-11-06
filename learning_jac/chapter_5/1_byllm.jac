import from byllm.lib{Model}
glob llm = Model(model_name ="gemini/gemini-2.5-flash");

""" Write a poem about topic """
def write_poetry(topic: str) -> str by llm();

with entry {

    poem = write_poetry("A Kenyan girl who wants to win so badly.");
    print(poem);
}