//
//  FlipCoinViewController.swift
//  CoinTossWithHistory
//
//  Created by Gabriele on 3/30/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class FlipCoinViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        performSegueWithIdentifier("seeResults", sender: self)
    }
}

