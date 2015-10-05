//
//  HomePresenter.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/29/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import UIKit

class HomePresenter: NSObject {
  weak var view: HomeViewControllerInput!
  var interactor: HomeInteractorInput!
}

// MARK: HomeViewControllerOutput
extension HomePresenter: HomeViewControllerOutput {
  func getData() {
    interactor.getData()
  }
}

// MARK: HomeInteractorOutput
extension HomePresenter: HomeInteractorOutput {
  func list(feed: [Feed]) {
    view.updateUI(feed)
  }
}

