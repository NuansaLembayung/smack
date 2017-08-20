//
//  LoginVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var usernameTextField: SmackTextField!
    @IBOutlet weak var passwordTextField: SmackTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        guard let username = usernameTextField.text , usernameTextField.text != "" else { return }
        guard let password = passwordTextField.text , passwordTextField.text != "" else { return }
        
        AuthService.instance.loginUser(email: username, password: password) { (success) in
            if (success) {
                print("success!!!", AuthService.instance.authToken)
            } else {
                print("failed!!!")
            }
        }
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_REGISTER, sender: sender)
    }
    
    @IBAction func exitBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
