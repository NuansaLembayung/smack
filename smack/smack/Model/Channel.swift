//
//  Channel.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

struct Channel {
    private(set) public var name:String!
    
    init(channelName:String) {
        name = channelName
    }
}
