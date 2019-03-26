//
//  PostViewVC.swift
//  MyHood
//
//  Created by Julian Mino on 3/21/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class PostViewVC: UIViewController {
    
    var _index: Int = 0
    var getPostImage = UIImage()
    var getPostTitle = String()
    var getPostDesc = String()
    
    var index: Int {
        get {
            return _index
        }
        set {
            _index = newValue
        }
    }
    
    @IBOutlet weak var finalPost: UIImageView!

    @IBOutlet weak var finalTitleLbl: UILabel!
    
    @IBOutlet weak var finalDescLbl: UILabel!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        finalPost.image = getPostImage
        finalTitleLbl.text = getPostTitle
        finalDescLbl.text = getPostDesc
    }
    
    @IBAction func onPressedDelete(_ sender: UIButton) {
        
        sendIndex()
        NotificationCenter.default.post(Notification(name: Notification.Name("postsRemoved"), object: nil))
        performSegue(withIdentifier: "back", sender: UIButton.self)
        
    }
    
    func sendIndex() {
        
        index = 0
        for post in DataService.instance.loadedPosts {
            if post.title == finalTitleLbl.text {
                print(DataService.instance.loadedPosts.count)
                DataService.instance.loadedPosts.remove(at: index)
                print(DataService.instance.loadedPosts.count)
                DataService.instance.savePosts()
                    DataService.instance.loadPosts()
                break
            }
            index = index + 1
        }
    }
    

}
