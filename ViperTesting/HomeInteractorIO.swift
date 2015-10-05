//
//  HomeInteractorDelegate.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/29/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import Foundation

protocol HomeInteractorInput: class {
  func getData()
}

protocol HomeInteractorOutput: class {
  func list(feed: [Feed])
}