//
//  HomeDatasource.swift
//  TwitterClone
//
//  Created by Weijie Lin on 1/25/18.
//  Copyright © 2018 Weijie Lin. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let deadpoolUser = User(name: "Deadpool", username: "@deadpool", bioText: "Hi from captain Deadpool", profileImage: #imageLiteral(resourceName: "deadpool_image"))
        let ironmanUser = User(name: "Ironman", username: "@ironman", bioText: "Richest and smartest person in the world", profileImage: #imageLiteral(resourceName: "ironman_image"))
        return [deadpoolUser, ironmanUser]
    }()
    
//    let words = ["user1", "user2", "user3"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
}
