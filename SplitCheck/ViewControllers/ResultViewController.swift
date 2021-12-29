//
//  ResultViewController.swift
//  SplitCheck
//
//  Created by Anibal Ventura on 29/12/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var amountPerPersonLabel: UIView!
    @IBOutlet var descriptionLabel: UIView!
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
