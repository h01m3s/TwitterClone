//
//  Tweet.swift
//  TwitterClone
//
//  Created by Weijie Lin on 1/27/18.
//  Copyright © 2018 Weijie Lin. All rights reserved.
//

import Foundation
import SwiftyJSON
import TRON

struct Tweet: JSONDecodable {
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        
        self.message = json["message"].stringValue
    }
}
