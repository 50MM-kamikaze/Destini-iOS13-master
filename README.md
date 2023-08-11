# Intro 
---
- stories will be changed according to the choices you make 
- includes 2 stories for basic understanding
# Step 1 
---
- Open the project and go to the Main.storyboard to familiarise yourself with the IBOutlets that have already been created for you. The easiest way is to open the Assistant editor and hover over the circles next to the code to see what they link to.
- Create a single **IBAction** that links both the “Choice 1” button and the “Choice 2” button to the ViewController.swift, call the IBAction choiceMade().
# Step 2
---
- At the top of the ViewController.swift file, just below the IBOutlets, create your first story and choice options by creating the following 3 let **constants**.
- **Name Value**

>story0 "You see a fork in the road."

>choice1 "Take a left."

>choice2 "Take a right." 

- Again inside viewDidLoad(), make the storyLabel display **story0**.
- Search StackOverflow and/or Apple documentation to figure out how to “change the title of a button using Swift”. Then set the red button to display choice1 and the purple button to display choice2.
	- change the text on the button using button.setTitle()

# Step 3 
---

- At this point, it’s very difficult to continue writing more stories without creating some sort of a structure that associates the choices with the story.

- We have already created a folder called Model and inside there is a file called **Story.swift**, modify this file to create a **Struct** called _Story_ that describes the structure of a story, including properties for the story title, choice1 and choice2.
    
- If successful, you should be able to replace the three constants (story0, choice1 and choice2) in ViewController.swift with a single line that creates a new story from the Story struct
- Instead of creating separate variables to store more stories, create an **Array** called stories that contains a total of 3 stories. These will correspond to the next stages in the story.
# Step 4 
---
Now, we need to link up our stories. When the user turns left, they see a tiger (story1) and when they turn right, they find a chest (story2).

- Link both buttons to an IBAction called choiceMade().
    
      
    
- Modify the code inside your ViewController.swift so that when you run the app and the user clicks on the button that says “Take a left”, the storyLabel updates to show “You see a tiger” and the choice buttons show the new choices. But if the user clicked on the button that says “Take a right”, the storyLabel updates to show “You find a treasure chest” as well as the new choices for that story.
# Step 5
---
- Create a **Structure** in the StoryBrain.swift file called StoryBrain.
    
- Move the storyNumber and stories Array into the StoryBrain.
    
- Create a method (a function associated with an object) in the StoryBrain that’s called nextStory(), it should take a single **input** called userChoice which is of type **String**.
    
- **Move** the story progression functionality that currently lives in the choiceMade() IBAction into the nextStory() method.
    
- Create a new instance of StoryBrain in the ViewController.swift to be able to tap into the newfound capabilities of the StoryBrain, call it storyBrain.
    
- Use the storyBrain to determine which story to show when the user makes a choice.
    
- Use the storyBrain to provide the story title and choice text.
    
- Make sure there are no more errors, but the functionality should be the same as the version you had at the end of Step 4.