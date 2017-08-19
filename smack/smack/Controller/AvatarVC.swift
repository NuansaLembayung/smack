//
//  AvatarVC.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class AvatarVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var avatarCollectionView: UICollectionView!
    @IBOutlet weak var avatarSelection: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarCollectionView.delegate = self
        avatarCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (avatarSelection.selectedSegmentIndex == 0) {
            return DataService.instance.darkAvatars.count
        } else {
            return DataService.instance.lightAvatars.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AvatarCell", for:indexPath) as? AvatarCell {
            if (avatarSelection.selectedSegmentIndex == 0) {
                cell.updateView(avatar: DataService.instance.darkAvatars[indexPath.row])
            } else {
                cell.updateView(avatar: DataService.instance.lightAvatars[indexPath.row])
            }
            return cell
        } else {
            return AvatarCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if (avatarSelection.selectedSegmentIndex == 0) {
//            let selectedAvatar = DataService.instance.darkAvatars[indexPath.row]
//        } else {
//            let selectedAvatar = DataService.instance.lightAvatars[indexPath.row]
//        }
//        performSegue(withIdentifier: BACK_REGISTER, sender: selectedAvatar)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let registerVC = segue.destination as? RegisterVC {
            assert(sender as? Avatar != nil)
            let avatar = sender as! Avatar
            registerVC.avatarImage.image = UIImage(named: avatar.name)
        }
    }

    @IBAction func avatarSCPressed(_ sender: Any) {
        avatarCollectionView.reloadData()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
