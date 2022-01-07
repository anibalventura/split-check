//
//  ViewController.swift
//  SplitCheck
//
//  Created by Anibal Ventura on 29/12/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    private var calculator: Calculator = Calculator()
    private var tipSelected: String = "10.0"
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var peopleLabel: UILabel!
    
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        sender.isSelected = true
        
        tipSelected =  String(sender.currentTitle!.dropLast())
        
        dismissKeyboard()
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        let value = Int(sender.value)
        peopleLabel.text = String(value)
        
        dismissKeyboard()
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        if let bill = Double(billTextField.text!) {
            let tip = Double(tipSelected)! / 100
            let people = Int(peopleLabel.text!)!
            
            calculator.calculateTotal(bill: bill, tip: tip, people: people)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        } else {
            let alert = UIAlertController(
                title: Localizable.Calculate.alertTitle,
                message: Localizable.Calculate.alertMessage,
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: Localizable.Calculate.alertButton, style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.split = calculator.split
        }
    }
    
    private func dismissKeyboard() {
        billTextField.endEditing(true)
    }
}
