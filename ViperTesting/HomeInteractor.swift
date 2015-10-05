//
//  HomeInteractor.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/29/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorInput {
  var output : HomeInteractorOutput!
  var feedService = FeedService()
  
  func getData() {
    feedService.fetchData { (data, error) -> () in
      self.output.list(data)
    }
  }
}

