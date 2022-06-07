//
//  SceneDelegate.swift
//  comicsMVP
//
//  Created by Надежда on 2022-06-02.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        let factory = Factory()
        
        let tabBarModel = TabBarModel()
        
        let comicsNavigationController = UINavigationController(rootViewController: ComicsViewController())
        let favoriteNavigationController = UINavigationController(rootViewController: FavoriteViewController())
        
        window.rootViewController = factory.makeTabBar(viewModel: tabBarModel, comicsController: comicsNavigationController, favoriteController: favoriteNavigationController)
        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }

}