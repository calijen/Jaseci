import from byllm.lib{Model}
glob llm = Model(model_name ="gemini/gemini-2.5-flash");

""" Write a poem about topic """
def write_poetry(topic: str) -> str by llm();

with entry {

    poem = write_poetry("A Kenyan girl who wants to win so badly.");
    print(poem);
}

#*
Result:
Dust rises on the red earth, a whisper in the breeze,
Where a Kenyan girl trains, beneath acacia trees.
Her gaze is fixed, beyond the distant, shimmering heat,
A burning fire within her, for victory, bittersweet.

Her lungs are strong, her spirit even more,
Each stride a prayer, each muscle aches to soar.
She dreams of glory, not just a fleeting fame,
But to etch her effort, upon the winner's name.

Dust rises on the red earth, a whisper in the breeze,
Where a Kenyan girl trains, beneath acacia trees.
Her gaze is fixed, beyond the distant, shimmering heat,
A burning fire within her, for victory, bittersweet.

Her lungs are strong, her spirit even more,
Each stride a prayer, each muscle aches to soar.
She dreams of glory, not just a fleeting fame,
But to etch her effort, upon the winner's name.

Her gaze is fixed, beyond the distant, shimmering heat,
A burning fire within her, for victory, bittersweet.

Her lungs are strong, her spirit even more,
Each stride a prayer, each muscle aches to soar.
She dreams of glory, not just a fleeting fame,
But to etch her effort, upon the winner's name.


Her lungs are strong, her spirit even more,
Each stride a prayer, each muscle aches to soar.
She dreams of glory, not just a fleeting fame,
But to etch her effort, upon the winner's name.

Each stride a prayer, each muscle aches to soar.
She dreams of glory, not just a fleeting fame,
But to etch her effort, upon the winner's name.

She dreams of glory, not just a fleeting fame,
But to etch her effort, upon the winner's name.

But to etch her effort, upon the winner's name.

She sees the finish line, a ribbon in her mind,
Leaving every doubt, and every foe behind.
The taste of triumph, a craving deep and vast,
Leaving every doubt, and every foe behind.
The taste of triumph, a craving deep and vast,
The taste of triumph, a craving deep and vast,
A longing for the moment, designed to truly last.

No second place will quell this hungry, driving need,
To plant her flag of greatness, to sow her champion seed.
She wants to win so badly, with every pulsing beat,
To feel the roar of triumph, impeccably complete.
*#