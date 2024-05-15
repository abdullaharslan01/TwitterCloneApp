//
//  ViewController.swift
//  TwitterClone
//
//  Created by abdullah on 15.05.2024.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        setViewControllers(createTabViewControllers(), animated: false)
    }
    
    
    
    func createNavigationController(rootViewController: UIViewController, title: String, imageName: String,  tag: Int, selectedImage: String? = nil) -> UINavigationController {
        
        
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        
        navigationController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: imageName, withConfiguration: configuration ), tag: tag)
        
        if let selectedImage = selectedImage { navigationController.tabBarItem.selectedImage = UIImage(systemName: selectedImage, withConfiguration: configuration)}

        
        return navigationController
    }
    
    
    func createTabViewControllers() -> [UINavigationController] {
        
        let homeNC = createNavigationController(rootViewController: HomeViewController(), title: "Home", imageName: "house", tag: 0, selectedImage: "house.fill")
        
        let searchNC = createNavigationController(rootViewController: SearchViewController(), title: "Search", imageName: "magnifyingglass", tag: 1)
        
        let notificationNC = createNavigationController(rootViewController: NotificationViewController(), title: "Notification", imageName: "bell", tag: 3, selectedImage: "bell.fill")
        
        let direktMessageNC = createNavigationController(rootViewController: DirektMessagesViewController(), title: "Direkt Message", imageName: "envelope", tag: 4, selectedImage: "envelope.fill")
        
        return [homeNC, searchNC, notificationNC, direktMessageNC]
    }


}


