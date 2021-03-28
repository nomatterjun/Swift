//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime: [String: Int] = ["Soft": 5, "Medium": 7, "Hard": 12] // minutes
    
    var remainingTime = 60
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        remainingTime = eggTime[hardness]! //* 60
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @IBOutlet weak var label: UILabel!
    
    @objc func updateCounter() {
        if remainingTime > 0 {
            print("\(remainingTime) seconds.")
            remainingTime -= 1
        } else {
            timer.invalidate()
            label.text = "DONE!"
        }
    }

}
