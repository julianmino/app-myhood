//
//  ViewController.swift
//  MyHood
//
//  Created by Julian Mino on 3/5/19.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePath: "", title: "Title 1", description: "description")
        let post1 = Post(imagePath: "", title: "Title 2", description: "description")
        let post2 = Post(imagePath: "", title: "Title 3", description: "description")
        
        posts.append(post)
        posts.append(post1)
        posts.append(post2)
        
        tableView.reloadData()

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
                cell.configureCell(post)
                return cell
        }
        return PostCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return posts.count
    }


}

