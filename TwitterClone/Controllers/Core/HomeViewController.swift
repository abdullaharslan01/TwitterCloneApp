//
//  HomeViewController.swift
//  TwitterClone
//
//  Created by abdullah on 15.05.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    
     private let timelineTableView: UITableView = {
        let tableView = UITableView()
         tableView.register(TweetTableViewCell.self, forCellReuseIdentifier: TweetTableViewCell.identifier)
         tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureTableViewCell()
        
    }
   
    func configureView(){
        view.backgroundColor = .systemBackground
        var image =  UIImageView(image: UIImage(systemName: "bird"))
        
        image.setWidth(40)
        image.setHeight(40)
        navigationItem.titleView = image
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: #selector(personButtonTapped))

    }
    @objc func personButtonTapped(){
        
    }

    func configureTableViewCell() {
        view.addSubview(timelineTableView)
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
        timelineTableView.frame = view.frame
    }
   
    


}




extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetTableViewCell.identifier, for: indexPath) as! TweetTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
extension HomeViewController: TweetTableViewCellDelegate {
    func tweetTableViewCellDidTapReply() {
     print("Reply")
    }
    
    func tweetTableViewCellDidTapRetweet() {
        print("Retweet")

    }
    
    func tweetTableViewCellDidTapLike() {
        print("Like")

    }
    
    func tweetTableViewCellDidTapShare() {
        print("Share")

    }
    
    
}
