//
//  ViewController.swift
//  SplitCheck
//
//  Created by Anibal Ventura on 29/12/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var amoutTextField: UITextField!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        // Deselect all buttons.
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        
        // Select chosed button.
        sender.isSelected = true
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        let value = Int(sender.value)
        splitNumberLabel.text = String(value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Show result in modal view.
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultViewController = segue.destination as! ResultViewController
        }
    }
}
