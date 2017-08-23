//
//  ViewController.swift
//  Dicee
//
//  Created by Tanveer Singh on 14/08/17.
//  Copyright © 2017 Tanveer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDicePair()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        randomDicePair()
    }
    
    func randomDicePair(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print("\(randomDiceIndex1) and \(randomDiceIndex2)")
        
        diceImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImage2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
            randomDicePair()
    }


}

