//
//  Localizable.swift
//  SplitCheck
//
//  Created by Anibal Ventura on 30/12/21.
//

import Foundation

struct Localizable {
    
    /* Views. */
    struct Calculate {
        static let alertTitle: String = NSLocalizedString("alert-title", comment: "Title of alert when there is no bill.")
        static let alertMessage: String = NSLocalizedString("alert-message", comment: "Message of alert when there is no bill.")
        static let alertButton: String = NSLocalizedString("alert-button", comment: "Button of alert when there is no bill.")
    }
    
    struct Result {
        static func resultDescription(people: Int, tip: Int) -> String {
            String(format: NSLocalizedString("result-description %d %d", comment: "Result description message."), people, tip)
        }
    }
}
