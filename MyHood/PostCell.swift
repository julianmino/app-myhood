//
//  PostCell.swift
//  MyHood
//
//  Created by Julian Mino on 3/6/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
        func configureCell(_ post: Post) {
            
            titleLbl.text = post.title
            descLbl.text = post.postDesc
        
    }


}
