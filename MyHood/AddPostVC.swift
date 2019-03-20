//
//  AddPostVCViewController.swift
//  MyHood
//
//  Created by Julian Mino on 3/10/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()

        postImage.layer.cornerRadius = 120
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    
    @IBAction func cancelButtonPress(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addImagePressed(_ sender: UIButton) {
        
        sender.setTitle("", for: .normal)
        present(imagePicker, animated: true, completion: nil)
    }

    @IBAction func makePostPressed(_ sender: UIButton) {
        if let title = titleField.text, let desc = descField.text, let img = postImage.image {
            
            let imgPath = DataService.instance.saveImageAndCreatePath(image: img)
            let post = Post(imagePath: imgPath, title: title, description: desc)
            DataService.instance.addPost(post: post)
            dismiss(animated: true, completion: nil)
            
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imagePicker.dismiss(animated: true, completion: nil)
        postImage.image = selectedImage
        
    }
    

}
