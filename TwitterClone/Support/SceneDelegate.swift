//
//  SceneDelegate.swift
//  TwitterClone
//
//  Created by abdullah on 15.05.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        window?.windowScene = windowScene
        
        window?.rootViewController = MainTabbarViewController()
        window?.makeKeyAndVisible()
        
    }

   


}
