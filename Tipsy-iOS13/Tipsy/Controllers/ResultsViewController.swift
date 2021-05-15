//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 이창준 on 2021/05/15.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result = "0.0"
    var tip = 0.1
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsLabel.text = "Split between \(split) people, with \(String(format: "%.0f", tip * 100))% tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
