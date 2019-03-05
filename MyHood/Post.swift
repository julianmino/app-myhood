//
//  Post.swift
//  MyHood
//
//  Created by Julian Mino on 3/5/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import Foundation

class Post {
    fileprivate var imagePath: String
    fileprivate var title: String
    fileprivate var postDesc: String

    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}
