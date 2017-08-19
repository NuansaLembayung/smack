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
        self.hideKeyboardWhenTappedAround()
    }

    @IBAction func chooseAvatarBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR, sender: sender)
    }
    
    @IBAction func generateBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func createBtnPressed(_ sender: Any) {
        guard let email = emailTextField.text, emailTextField.text != "" else { return }
        guard let password = passwordTextField.text , passwordTextField.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("registered user")
            }
        }
    }
    
    @IBAction func exitBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: BACK_CHANNEL, sender: sender)
    }
}
