//
//  SmackTextField.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit
@IBDesignable

class SmackTextField: UITextField {
    override func draw(_ rect: CGRect) {
        let line = GradientView(frame: CGRect(x: 0, y: frame.size.height-2, width: frame.size.width, height: 2))
        addSubview(line)
    }
}
