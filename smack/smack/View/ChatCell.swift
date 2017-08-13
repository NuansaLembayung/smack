//
//  ChatCell.swift
//  smack
//
//  Created by Nuansa Lembayung on 13/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ChatCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var message: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateView(chat:Chat) {
        profileImage.image = UIImage(named: chat.account.profileImage)
        name.text = chat.account.username
        date.text = String(describing: chat.date)
        message.text = chat.message
    }

}
