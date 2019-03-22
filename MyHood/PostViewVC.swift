//
//  PostViewVC.swift
//  MyHood
//
//  Created by Julian Mino on 3/21/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class PostViewVC: UIViewController {
    
    var getPostImage = UIImage()
    var getPostTitle = String()
    var getPostDesc = String()
    
    @IBOutlet weak var finalPost: UIImageView!

    @IBOutlet weak var finalTitleLbl: UILabel!
    
    @IBOutlet weak var finalDescLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        finalPost.image = getPostImage
        finalTitleLbl.text = getPostTitle
        finalDescLbl.text = getPostDesc
    }

}
