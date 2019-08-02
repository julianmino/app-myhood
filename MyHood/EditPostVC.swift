//
//  EditPostVC.swift
//  MyHood
//
//  Created by Julian Mino on 8/1/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class EditPostVC: UIViewController {
    
    var getPost = Post()
    var getPostImage = UIImage()
    var getPostTitle = String()
    var getPostDesc = String()
    var getImagePath = String()

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var descLabel: UITextField!
    @IBOutlet weak var imageField: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = getPostTitle
        descLabel.text = getPostDesc
        imageField.image = getPostImage
    }
    
    
    
    @IBAction func cancelButtonPress(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func finishEditing(_ sender: UIButton) {
        
                getPost.title = titleLabel.text!
                getPost.postDesc = descLabel.text!
                DataService.instance.savePosts()

    }
}
