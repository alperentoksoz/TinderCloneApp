//
//  User.swift
//  TinderClone
//
//  Created by Alperen Toksöz on 1.04.2020.
//  Copyright © 2020 Alperen Toksöz. All rights reserved.
//

import UIKit

struct User {
    
    var name: String
    var age: Int
    let email: String
    var uid: String
    var imageURLs: [String]
    var profession: String
    var minSeekingAge: Int = 18
    var maxSeekingAge: Int = 40
    var bio: String
    
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["fullname"] as? String ?? ""
        self.age = dictionary["age"] as? Int ?? 0
        self.email = dictionary["email"] as? String ?? ""
        self.imageURLs = dictionary["imageURLs"] as? [String] ?? [String]()
        self.uid = dictionary["uid"] as? String ?? ""
        self.profession = dictionary["profession"] as? String ?? ""
        self.minSeekingAge = dictionary["minSeekingAge"] as? Int ?? 18
        self.maxSeekingAge = dictionary["maxSeekingAge"] as? Int ?? 40
        self.bio = dictionary["bio"] as? String ?? ""
    }
    
    
}
