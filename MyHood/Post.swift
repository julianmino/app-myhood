//
//  Post.swift
//  MyHood
//
//  Created by Julian Mino on 3/5/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    fileprivate var _imagePath: String!
    fileprivate var _title: String!
    fileprivate var _postDesc: String!
    
    var imagePath: String {
        return _imagePath
    }

    var title: String {
        get {
        return _title
    }
        set {
            _title = newValue
        }
    }
    
    var postDesc: String {
        get {
        return _postDesc
    }
        set {
            _postDesc = newValue
        }
    }

    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
    }
    
    override init() {
    }
        func encode(with aCoder: NSCoder) {
            aCoder.encode(self._title, forKey: "title")
            aCoder.encode(self._postDesc, forKey: "description")
            aCoder.encode(self._imagePath, forKey: "imagePath")
        }
        
        convenience required init?(coder aDecoder: NSCoder)  {
            self.init()
            self._imagePath = aDecoder.decodeObject(forKey: "imagePath") as? String
            self._title = aDecoder.decodeObject(forKey: "title") as? String
            self._postDesc = aDecoder.decodeObject(forKey: "description") as? String
        }
    
    
}
