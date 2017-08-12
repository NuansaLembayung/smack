//
//  ChatVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 11/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    @IBAction func menuBtnTapped(_ sender: Any) {
        self.revealViewController().revealToggle(sender)
    }
}
