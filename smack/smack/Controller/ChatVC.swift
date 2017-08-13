//
//  ChatVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 11/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ChatVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var chatTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        chatTable.delegate = self
        chatTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for:indexPath) as? ChatCell {
            return cell
        } else {
            return ChatCell()
        }
    }

    @IBAction func menuBtnPressed(_ sender: Any) {
        self.revealViewController().revealToggle(sender)
    }
    
    @IBAction func sendBtnPressed(_ sender: Any) {
        
    }
}
