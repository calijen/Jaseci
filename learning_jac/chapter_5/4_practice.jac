#*
You have a list of image files: ["sunset.png", "mountain.gif", "dog.jpeg"]. 
Write a function, batch_identify(captioner, image_list), that takes an ImageCaptioner object and this list of filenames. 
The function must iterate through the list, call the identify_objects method for each image, and then return a list of strings, where each string is the object description for the corresponding image.

*#
import from byllm.lib{Model, Image}
glob identifier_llm = Model(model_name="gemini/gemini-2.5-flash");
obj image_identifier{
    has name: str;
    """Identify specific objects visible in the image"""
def identify_objects(image: Image) -> list[str] by identifier_llm();

}



def batch_identify(captioner: obj, image_list: list[str]) ->list[str]{
    # initialize an empty list
    results_list = [];
    for image in image_list{
    
        current_image = Image(image);
        # store the result when calling the method
        object_description = captioner.identify_objects(current_image);
     # Add the result to the list
     results_list.append(object_description);
     
    
    }
    # Return the list
     return results_list;
}


with entry{
    image_list: list = ["photo.jpg","photo1.jpg","photo3.jpg","photo4.jpg", "photo5.jpg", "photo6.jpg"];
    objectifier = image_identifier(name = "AI object identifier");

    
    object_list = batch_identify(objectifier, image_list);

    print(object_list);

    
}