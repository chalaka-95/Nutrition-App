//
//  MainTabBarViewController.swift
//  Nutrition App
//
//  Created by Chalaka Hasantha on 2022-11-23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let diary = UINavigationController(rootViewController: MainViewController())
        let recipes = UINavigationController(rootViewController: RecipeViewController())
        let plan = UINavigationController(rootViewController: DashboardViewController())
        let profile = UINavigationController(rootViewController: DashboardViewController())
        
        diary.tabBarItem.image = UIImage(systemName: "house")
        recipes.tabBarItem.image = UIImage(systemName: "timer")
        plan.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        profile.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        tabBar.tintColor = .label
        
        diary.title = "Home"
        recipes.title = "Upcoming"
        plan.title = "Search"
        profile.title = "Download"
        
        setViewControllers([diary,recipes,plan,profile], animated: true)
        
    }
    
    
}
