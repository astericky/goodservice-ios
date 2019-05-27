//
//  MainTabBarController.swift
//  GoodService
//
//  Created by Chris Sanders on 5/27/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupTabs()
  }
  
  fileprivate func setupTabs() {
    let trainController = tabTemplateNavController(title: "Trains", rootViewController: TrainController())
    
    viewControllers = [
      trainController,
    ]
  }
  
  fileprivate func tabTemplateNavController(title: String,
                                            rootViewController: UIViewController = UIViewController()) -> UINavigationController {
    let navController = UINavigationController(rootViewController: rootViewController)
    navController.tabBarItem.title = title
    return navController
  }
}
