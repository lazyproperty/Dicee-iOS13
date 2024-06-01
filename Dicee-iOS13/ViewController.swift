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
     
        mainView.backgroundColor = #colorLiteral(red: 0.008770671673, green: 0.7166469693, blue: 0.002310670679, alpha: 1)

        let font = UIFont.systemFont(ofSize: 40, weight: .bold)
        let attributes = [NSAttributedString.Key.font: font]
        let attrTitle = NSAttributedString(string: "ROLL", attributes: attributes)
        
        rollButton.setAttributedTitle(attrTitle, for: UIControl.State.normal)
        
        
        rollButton.configuration?.cornerStyle = .capsule
        
       
        rollButton.configuration?.background.backgroundColor = #colorLiteral(red: 0.4383858442, green: 0.1353131533, blue: 0.08916733414, alpha: 1)
       
        
        let arrayOfCubes = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
     
        diceImageViewOne.image = arrayOfCubes.randomElement()
        diceImageViewTwo.image = arrayOfCubes.randomElement()
        
        if diceImageViewOne.image == diceImageViewTwo.image {
            
            mainView.backgroundColor = #colorLiteral(red: 0.6235027313, green: 1, blue: 0.6500176787, alpha: 1)

            rollButton.configuration?.cornerStyle = .capsule
            rollButton.configuration?.background.backgroundColor = #colorLiteral(red: 0, green: 0.7066929936, blue: 0.2558993399, alpha: 1)
            
            let font = UIFont.systemFont(ofSize: 30, weight: .bold)
            let attributes = [NSAttributedString.Key.font: font, ]
            let attrTitle = NSAttributedString(string: "Similarity", attributes: attributes)
            
            rollButton.setAttributedTitle(attrTitle, for: UIControl.State.normal)
            print("Similarity")
            
        } else {
            
       print("Button got tapped")
            
       }
    }
}



