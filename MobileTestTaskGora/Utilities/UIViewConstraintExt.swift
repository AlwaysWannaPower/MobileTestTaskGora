//
//  UIViewConstraintExt.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

// https://www.youtube.com/watch?v=m_0_XQEfrGQ
// Beginner Auto Layout & Constraints - Swift 4.2 - Xcode 10

extension UIView {
    /// Размещает UIView к границах родительского UIView
    ///
    /// Строит constraint'ы и размещает self View граница к границе с родительским
    /// - Parameter superView: прикрепить данное view к SuperView
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints                             = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive           = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive   = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive     = true
    }
}
