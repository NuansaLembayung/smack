//
//  RegisterVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameTextField: SmackTextField!
    @IBOutlet weak var emailTextField: SmackTextField!
    @IBOutlet weak var passwordTextField: SmackTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func chooseAvatarBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR, sender: sender)
    }
    
    @IBAction func generateBtnPressed(_ sender: Any) {
    }
    
    @IBAction func createBtnPressed(_ sender: Any) {
    }
    
    @IBAction func exitBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: BACK_CHANNEL, sender: sender)
    }
}
