//
//  UIView+Ex.swift
//  IrregularVerbs
//
//  Created by Marat Cherkasov on 21.04.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
