//
//  FeedServiceDelegate.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/30/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import Foundation

protocol FeedServiceDelegate: class {
  func fetchData(completion: (data: [Feed], error: NSError?) -> ())
}