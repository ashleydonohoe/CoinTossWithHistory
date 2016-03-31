//
//  HistoryViewController.swift
//  CoinTossWithHistory
//
//  Created by Gabriele on 3/30/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if(NSUserDefaults.standardUserDefaults().objectForKey("historyContent") != nil) {
            tossHistory = NSUserDefaults.standardUserDefaults().objectForKey("historyContent") as! [String]
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        table.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tossHistory.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = tossHistory[indexPath.row]
        return cell
    }
}
