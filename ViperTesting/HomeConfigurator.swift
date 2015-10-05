//
//  HomeConfigurator.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 10/5/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import Foundation
import UIKit

class HomeConfigurator
{
  // MARK: Object lifecycle
  
  class var sharedInstance: HomeConfigurator
  {
    struct Static {
      static var instance: HomeConfigurator?
      static var token: dispatch_once_t = 0
    }
    
    dispatch_once(&Static.token) {
      Static.instance = HomeConfigurator()
    }
    
    return Static.instance!
  }
  
  // MARK: Configuration
  
  func configure(viewController: HomeViewController)
  {
    let router = HomeRouter()
    router.viewController = viewController
    
    let presenter = HomePresenter()
    viewController.output = presenter
    presenter.view = viewController
    
    let interactor = HomeInteractor()
    presenter.interactor = interactor
    interactor.output = presenter
  }
  
  // MARK: Init ViewController
  func initHomeViewController() -> HomeViewController {
    let storyboard = UIStoryboard(name: "Home", bundle: nil)
    let viewController = storyboard.instantiateViewControllerWithIdentifier("Home") as! HomeViewController
    self.configure(viewController)
    return viewController
  }
}