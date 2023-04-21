//
//  UIStackView+Ex.swift
//  IrregularVerbs
//
//  Created by Marat Cherkasov on 21.04.2023.
//

import UIKit

extension UIStackView{
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
