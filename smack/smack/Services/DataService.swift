//
//  DataService.swift
//  smack
//
//  Created by Nuansa Lembayung on 13/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private(set) public var darkAvatars:[Avatar] = []
    private(set) public var lightAvatars:[Avatar] = []
    
    init() {
        for i in 0...27 {
            darkAvatars.append(Avatar.init(avatarName: "dark\(i).png"))
            lightAvatars.append(Avatar.init(avatarName: "light\(i).png"))
        }
    }
    
//    func getDarkAvatars() -> [Avatar] {
//        return darkAvatars
//    }
//
//    func getLightAvatars() -> [Avatar] {
//        return lightAvatars
//    }
}
