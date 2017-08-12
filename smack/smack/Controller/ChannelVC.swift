//
//  ChannelVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 11/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = 0.7 * self.view.frame.size.width
    }

}
