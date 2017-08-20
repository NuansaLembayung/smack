//
//  Constants.swift
//  smack
//
//  Created by Nuansa Lembayung on 12/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success:Bool) -> ()

//URL
let BASE_URL = "https://nuansa-smack.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//Segues
let TO_LOGIN = "LoginVCSegue"
let TO_REGISTER = "RegisterVCSegue"
let TO_AVATAR = "AvatarVCSegue"
let BACK_CHANNEL = "ChannelVCUnwind"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//HeaderB
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
