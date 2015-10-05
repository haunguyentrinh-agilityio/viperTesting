//
//  FeedService.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/30/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import UIKit

class FeedService: FeedServiceDelegate {
  func fetchData(completion: (data: [Feed], error: NSError?) -> ()) {
    let path = NSBundle.mainBundle().pathForResource("Feed", ofType: "plist")
    let items = NSArray(contentsOfFile: path!)!
    var data : [Feed] = []
    
    for item in items {
      let feed = Feed(jsonDict: item as! [String: AnyObject])
      data.append(feed)
    }
    
    completion(data: data, error: nil)
  }
}
