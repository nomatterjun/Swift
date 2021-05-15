//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipValue: Double = 0.0
    var stepperValue: Int = 0
    var result: Double = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonText = sender.currentTitle
        tipValue = Double(buttonText!.dropLast())! / 100.0
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        stepperValue = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billValue = billTextField.text ?? ""
        if billValue != "" {
            let totalValue: Double = (Double(billValue) ?? 0.0) * (1 + tipValue)
            result = totalValue / Double(stepperValue)
            self.performSegue(withIdentifier: "goToResults", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = String(result)
            destinationVC.split = stepperValue
            destinationVC.tip = tipValue
        }
    }

}

