//
//  ResultViewController.swift
//  CoinTossWithHistory
//
//  Created by Gabriele on 3/30/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    var result: (String, String)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        determineWinner()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func determineWinner() {
        
        let number = arc4random_uniform(2)
        if number == 0 {
            resultLabel.text = "Heads"
            resultImage.image = UIImage(named: "heads.jpg")
        } else {
            resultLabel.text = "Tails"
            resultImage.image = UIImage(named: "tails.jpg")
        }
    }

}
