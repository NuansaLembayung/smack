//
//  DismissKeyboard.swift
//  smack
//
//  Created by Nuansa Lembayung on 20/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap:UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
