//
//  ThirdViewController.swift
//  The Ultimate Baldi
//
//  Created by Kyle Chung on 12/13/18.
//  Copyright © 2018 Kyle Chung. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var nextBaldiMood: UIImageView!
    var newBaldiMood: UIImage!
    
    @IBOutlet var foodLabel: UILabel!
    @IBOutlet var foodImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        foodImage.frame = CGRect(x: 150, y: 400, width: 50, height: 50)
        nextBaldiMood.image = newBaldiMood
       
        view.backgroundColor = .yellow
        

        
        
        class food {
            var color: UIColor
            init() {
                color = .blue
            }
            var name = "Candy Bar"
            var amount = 2
            
        }
        class Soda: food {
            var taste = "sweet"
                
            }
        }
        
    @IBAction func SodaButton(_ sender: Any) {
        
        foodImage.image = UIImage(named: "Soda")
        foodImage.frame = CGRect(x: 150, y: 400, width: 50, height: 50)
        foodImage.alpha = 1
    }
    
    
    @IBAction func CandybarButton(_ sender: Any) {
        foodImage.image = UIImage(named: "Candy bar")
        foodImage.frame = CGRect(x: 150, y: 400, width: 50, height: 50)
        foodImage.alpha = 1
    }
    
    @IBAction func foodPanGest(_ sender: UIPanGestureRecognizer) {
        
        var point = sender.location(in:view)
        foodImage.center = point
        if nextBaldiMood.frame.contains(point) {
            nextBaldiMood.image = UIImage(named: "Baldi is happy")
            foodImage.alpha = 0
            foodLabel.text = "Now Baldi is happy because he got a nice tasty snack!"
        }
        
    }
    
        
        
    }
    

    

    


