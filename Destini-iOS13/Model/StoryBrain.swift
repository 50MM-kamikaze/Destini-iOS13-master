//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    let stories = [
        Story(title: "You see a fork on road", choice1: "Take Left", choice2: "Take Right", choice1Destination:1 , choice2Destination: 2) ,
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Run bruh", choice1Destination: 3, choice2Destination: 3),
        Story(title: "You found a Chest", choice1: "open it", choice2: "Check for traps", choice1Destination: 3, choice2Destination: 3 ),
        Story(title: "End", choice1: "End", choice2: "end", choice1Destination: 0, choice2Destination: 0)
    ]
    func getStoryTitle() -> String{
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories [storyNumber].choice2
    }
    mutating func checkButtonPressed(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else {
            storyNumber = currentStory.choice2Destination
            
        }
    }
    
}
