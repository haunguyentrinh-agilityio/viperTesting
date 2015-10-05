//
//  HomeRouter.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 10/5/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import UIKit

class HomeRouter: NSObject {
  weak var viewController: HomeViewController!
  
  // MARK: Present HomeVIewController from UIWindow
  func presentViewControllerFrom(window: UIWindow) {
    viewController = HomeConfigurator.sharedInstance.initHomeViewController()
    window.rootViewController = viewController
  }
}
