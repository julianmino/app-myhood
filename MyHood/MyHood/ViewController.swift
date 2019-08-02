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
        
        self.navigationController?.isNavigationBarHidden = true
        DataService.instance.loadPosts()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.onPostsLoaded(notification:)), name: Notification.Name("postsLoaded"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.onPostDeleted(notification:)), name: Notification.Name("postsRemoved"), object: nil)

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let post = DataService.instance.loadedPosts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
                cell.configureCell(post)
            return cell
        }
        return PostCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return DataService.instance.loadedPosts.count
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            DataService.instance.loadedPosts.remove(at: indexPath.row)
            DataService.instance.savePosts()
            //DataService.instance.loadPosts()
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "PostViewVC") as! PostViewVC
        
        DvC.getPostImage = DataService.instance.imageForPath(path: DataService.instance.loadedPosts[indexPath.row].imagePath)!
        DvC.getPostDesc = DataService.instance.loadedPosts[indexPath.row].postDesc
        DvC.getPostTitle = DataService.instance.loadedPosts[indexPath.row].title
        
        self.navigationController?.pushViewController(DvC, animated: true)
    }

    @objc func onPostsLoaded(notification: Notification) {
        tableView.reloadData()
    }
    
    @objc func onPostDeleted(notification: Notification) {
        tableView.reloadData()
    }

}

