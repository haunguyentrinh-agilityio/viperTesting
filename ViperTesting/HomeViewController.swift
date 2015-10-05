//
//  HomeViewController.swift
//  ViperTesting
//
//  Created by Hau Nguyen on 9/29/15.
//  Copyright (c) 2015 Hau Nguyen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  
  // MARK: Properties
  var output: HomeViewControllerOutput!
  var router: HomeRouter!
  var feeds : [Feed] = []
  
  // MARK: IBOutlet
  @IBOutlet weak var table: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  @IBAction func getData(sender: AnyObject) {
    output.getData()
  }
}

extension HomeViewController: UITableViewDataSource {
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return feeds.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCellWithIdentifier("FeedTableViewCell") as! FeedTableViewCell
    cell.feed = feeds[indexPath.row]
    return cell
  }
}

extension HomeViewController: HomeViewControllerInput {
  func updateUI(feed: [Feed]) {
    self.feeds = feed
    self.table.reloadData()
  }
}


