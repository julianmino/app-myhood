//
//  EditPostVC.swift
//  MyHood
//
//  Created by Julian Mino on 8/1/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class EditPostVC: UIViewController {
    
    var getPostImage = UIImage()
    var getPostTitle = String()
    var getPostDesc = String()

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var descLabel: UITextField!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var imageField: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageField.layer.cornerRadius = 120
        titleLabel.text = getPostTitle
        descLabel.text = getPostDesc
        imageField.image = getPostImage
    }
    
    
    
    @IBAction func cancelButtonPress(_ sender: UIButton) {
        
        //performSegue(withIdentifier: "comeBack", sender: self)
        dismiss(animated: true, completion: nil)
    }
    
    /*@IBAction func finishEditing(_ sender: UIButton) {
        if let title = titleLabel.text, let desc = descLabel.text, let img = imageField.image {
            
            let imgPath = DataService.instance.saveImageAndCreatePath(image: img)
            let post = Post(imagePath: imgPath, title: title, description: desc)
            DataService.instance.addPost(post: post)
            dismiss(animated: true, completion: nil)
            
        }
    }*/

    }
