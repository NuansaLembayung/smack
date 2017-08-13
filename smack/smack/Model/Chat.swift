//
//  Chat.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

struct Chat {
    private(set) public var account:Account!
    private(set) public var date:Date!
    private(set) public var message:String!
    
    init(chatAccount:Account, chatDate:Date, chatMessage:String) {
        account = chatAccount
        date = chatDate
        message = chatMessage
    }
}
