//
//  EditPostVC.swift
//  MyHood
//
//  Created by Julian Mino on 8/1/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class EditPostVC: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var descLabel: UITextField!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var imageField: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func cancelButtonPress(_ sender: UIButton) {
        
        //performSegue(withIdentifier: "comeBack", sender: self)
        dismiss(animated: true, completion: nil)
    }

    }
