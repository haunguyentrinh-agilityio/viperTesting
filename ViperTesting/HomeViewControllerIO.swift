//
//  HomeViewDelegate.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/29/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import Foundation

protocol HomeViewControllerInput: class {
  
  func updateUI(feed: [Feed])
}


protocol HomeViewControllerOutput: class {
  func getData()
}


