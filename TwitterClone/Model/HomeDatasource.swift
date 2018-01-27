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
        let deadpoolUser = User(name: "Deadpool", username: "@deadpool", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-c and build iOS apps!", profileImage: #imageLiteral(resourceName: "deadpool_image"))
        let ironmanUser = User(name: "Ironman", username: "@ironman", bioText: "Richest and smartest person in the world", profileImage: #imageLiteral(resourceName: "ironman_image"))
        let testUser = User(name: "TESTUSER", username: "@testuser", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-c and build iOS apps! iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-c and build iOS apps! iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-c and build iOS apps! iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-c and build iOS apps! ", profileImage: #imageLiteral(resourceName: "deadpool_image"))
        return [deadpoolUser, ironmanUser, testUser]
    }()
    
    let tweets: [Tweet] = {
        let deadpoolUser = User(name: "Deadpool", username: "@deadpool", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-c and build iOS apps!", profileImage: #imageLiteral(resourceName: "deadpool_image"))
        let tweet = Tweet(user: deadpoolUser, message: "This the first tweet from captain Deadpool. And captain Deadpool wants to make it long long long.")
        let tweet2 = Tweet(user: deadpoolUser, message: "This the second tweet from captain Deadpool. And captain Deadpool wants to make it long long long.")
        return [tweet, tweet2]
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
    
}
