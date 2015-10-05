//
//  Feed.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/30/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import UIKit

class Feed: NSObject {
  var name: String?
  var image: String?
  
  init(jsonDict: [String: AnyObject]) {
    if let image = jsonDict["image"] as? String {self.image = image}
    if let name = jsonDict["name"] as? String {self.name = name}
  }
}