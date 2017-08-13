//
//  AvatarCell.swift
//  smack
//
//  Created by Nuansa Lembayung on 13/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    @IBOutlet weak var avatarImage:UIImageView!
    
    func updateView(avatar:Avatar) {
        avatarImage.image = UIImage(named: avatar.name)
    }
}
