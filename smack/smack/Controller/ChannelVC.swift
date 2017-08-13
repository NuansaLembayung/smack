//
//  ChannelVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 11/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var channelTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        channelTable.dataSource = self
        channelTable.delegate = self
        
        self.revealViewController().rearViewRevealWidth = 0.7 * self.view.frame.size.width
    }

    @IBAction func loginBtn(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: sender)
    }
    
    @IBAction func addChannelBtnPressed(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
