//
//  ResultViewController.swift
//  SplitCheck
//
//  Created by Anibal Ventura on 29/12/21.
//

import UIKit

class ResultViewController: UIViewController {
    var split: Split?
    
    @IBOutlet var totalPerPersonLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalPerPersonLabel.text = String(format: "%.2f", split!.total)
        descriptionLabel.text = Localizable.resultDescription(people: split!.people, tip: Int(split!.tip) * 100)
    }
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
