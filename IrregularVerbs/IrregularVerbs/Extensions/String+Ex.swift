//
//  String+Ex.swift
//  IrregularVerbs
//
//  Created by Marat Cherkasov on 20.04.2023.
//

import UIKit

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
