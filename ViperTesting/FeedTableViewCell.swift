//
//  FeedTableViewCell.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 10/5/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
  
  // MARK: Properties
  var feed: Feed! {
    didSet {
      self.name.text = self.feed.name
      self.avatar.image = UIImage(data: NSData(contentsOfURL: NSURL(string: self.feed.image!)!)!)
    }
  }
  
  // MARK: IBOutlet
  @IBOutlet weak var avatar: UIImageView!
  @IBOutlet weak var name: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }

}
