//
//  Account.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

struct Account {
    private(set) public var profileImage:String!
    private(set) public var username:String!
    private(set) public var password:String!
    private(set) public var email:String!
    
    init(accountImage:String, accountUsername:String, accountPassword:String, accountEmail:String) {
        profileImage = accountImage
        username = accountUsername
        password = accountPassword
        email = accountEmail
    }
}
