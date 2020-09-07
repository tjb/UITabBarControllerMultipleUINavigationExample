//
//  ViewController.swift
//  MultiNavigationExample
//
//  Created by canti on 9/7/20.
//  Copyright © 2020 tjb. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    lazy var firstViewController: UINavigationController = {
        let navigationController = UINavigationController(rootViewController: FirstViewController())
        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        return navigationController
    }()
    
    lazy var secondViewController: UINavigationController = {
        let navigationController = UINavigationController(rootViewController: SecondViewController())
        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        return navigationController
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        addViewControllers(views: [firstViewController, secondViewController])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addViewControllers(views: [UIViewController]) {
        self.viewControllers = views
    }

}
