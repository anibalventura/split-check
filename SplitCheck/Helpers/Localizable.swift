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
        static let alertTitle: String = NSLocalizedString("alert-title", comment: "")
        static let alertMessage: String = NSLocalizedString("alert-message", comment: "")
        static let alertButton: String = NSLocalizedString("alert-button", comment: "")
    }

    struct Result {
        static func resultDescription(people: Int, tip: Int) -> String {
            String(format: NSLocalizedString("result-description %d %d", comment: ""), people, tip)
        }
    }
}
