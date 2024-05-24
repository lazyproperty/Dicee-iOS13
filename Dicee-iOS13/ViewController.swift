//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var rollButton: UIButton!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        diceImageViewOne.image = UIImage(named: "DiceSix")
//        diceImageViewTwo.image = UIImage(named: "DiceSix")
//        
//        diceImageViewOne.alpha = 0.9
//        diceImageViewTwo.alpha = 0.9
//    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        mainView.backgroundColor = #colorLiteral(red: 0, green: 0.7066929936, blue: 0.2558993399, alpha: 1)
        rollButton.backgroundColor = #colorLiteral(red: 0.4875617623, green: 0.09158249944, blue: 0.0982972309, alpha: 1)
        rollButton.setTitle("ROLL", for: .normal)
        
        let arrayOfCubes = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
     
        diceImageViewOne.image = arrayOfCubes.randomElement()
        diceImageViewTwo.image = arrayOfCubes.randomElement()
        
        if diceImageViewOne.image == diceImageViewTwo.image {
            rollButton.backgroundColor = #colorLiteral(red: 0.8467723131, green: 0.1409481764, blue: 0.1684038639, alpha: 1).withAlphaComponent(0.8)
            
            rollButton.setTitle("SIMILARITY", for: .normal)
            mainView.backgroundColor = #colorLiteral(red: 0.6235027313, green: 1, blue: 0.6500176787, alpha: 1)
            print("Similarity")
            
        } else {
            
       print("Button got tapped")
            
       }
    }
}



