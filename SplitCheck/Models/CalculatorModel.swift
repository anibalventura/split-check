//
//  CalculatorModel.swift
//  SplitCheck
//
//  Created by Anibal Ventura on 29/12/21.
//

import Foundation

struct Calculator {
    private(set) var split: Split?
    
    mutating func calculateTotal(bill: Double, tip: Double, people: Int) {
        let total = (bill + (bill * tip)) / Double(people)
        
        split = Split(total: total, tip: tip, people: people)
    }
}
