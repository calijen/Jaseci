#*
Semantic strings provide additional context to AI functions via the sem keyword, 
They allow for more nuanced understanding without cluttering your code.
*#

import from byllm.lib {Model, Image}

glob vision_llm = Model(model_name="gemini/gemini-2.5-flash");

obj PhotoAnalyzer {
    has photographer_name: str;
    has style_preference: str;
    has image: Image;
}

 # Add semantic context for better AI understanding
 sem PhotoAnalyzer = "Professional photo analysis tool for photographer";
 sem PhotoAnalyzer.photographer_name= "Name of the photographerfor personalized analysis";
 sem PhotoAnalyzer.style_preference = "Preferred photography style (artistic, documentary, commercial)";

 """Generate caption considering photographer's style preference."""
 def generate_styled_caption(pa: PhotoAnalyzer) -> str by vision_llm();
"""Provide technical photography feedback"""
def analyze_composition(pa: PhotoAnalyzer) -> list[str] by vision_llm();
"""Suggest improvements for the photo"""
def Suggest_improvements(pa: PhotoAnalyzer) -> list[str] by vision_llm();

with entry{
    analyzer = PhotoAnalyzer(
        photographer_name = "Alice",
        style_preference = "artistic",
        image = Image("photo6.jpg")
    );

    #generate syled caption
    caption = generate_styled_caption(analyzer);
    print(f"Styled caption: {caption}");

        # Analyze composition
    composition = analyze_composition(analyzer);
    print(f"Composition analysis: {composition}");

    # Get improvement suggestions
    suggestions = suggest_improvements(analyzer);
    print(f"Suggestions: {suggestions}");

}
