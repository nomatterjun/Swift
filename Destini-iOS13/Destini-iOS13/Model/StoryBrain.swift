//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyBrain = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var currentStage = 0
    
    func getTitle() -> String {
        return storyBrain[currentStage].title
    }
    
    func getChoice1() -> String {
        return storyBrain[currentStage].choice1
    }
    
    func getChoice2() -> String {
        return storyBrain[currentStage].choice2
    }
}
