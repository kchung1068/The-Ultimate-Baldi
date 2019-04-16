//
//  SecondViewController.swift
//  The Ultimate Baldi
///
//  Created by Kyle Chung on 12/12/18.
//  Copyright © 2018 Kyle Chung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var NineThreeTextField: UITextField!
    
    @IBOutlet var TwoFiveTextField: UITextField!
    
    @IBOutlet var ThreeFiveTextField: UITextField!
    
    @IBOutlet var baldiMood: UIImageView!
    
    @IBOutlet var backLabel: UILabel!
    
    @IBOutlet var nextView: UIView!
    
    @IBOutlet var nextGesture: UITapGestureRecognizer!
    
    @IBOutlet var nextLabel: UILabel!
    
    
    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        NineThreeTextField.resignFirstResponder()
        TwoFiveTextField.resignFirstResponder()
        ThreeFiveTextField.resignFirstResponder()
        return true
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
nextView.alpha = 0
        nextLabel.alpha = 0
        
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ThirdViewController
        var baldiMood = self.baldiMood.image
        nvc.newBaldiMood = baldiMood
    }
    
    
    
    
    
    
    @IBAction func DonemathButton(_ sender: Any) {
        textFieldShouldReturn(NineThreeTextField)
        textFieldShouldReturn(ThreeFiveTextField)
        textFieldShouldReturn(TwoFiveTextField)
        
        if Int(NineThreeTextField.text!)! == 12, Int(TwoFiveTextField.text!)! == -3,
            Int(ThreeFiveTextField.text!)! == 15 {
            baldiMood.image = UIImage(named: "Baldi is happy")
            backLabel.text = "Good Job! You really know your math well! (But what happens if one is wrong?)"
        } else {
            baldiMood.image = UIImage(named: "Baldi is mad")
            backLabel.text = "Oh NO!!!! Baldi is MAD!!!! But there is still something else you can do!"
            nextView.alpha = 1
            nextLabel.alpha = 1
            nextLabel.text = "Go On!"
            let baldiAlert = UIAlertController(title: "OH NO!!!", message: "Baldi is MAD!!! But there is still something else you can do!", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            let goonAction = UIAlertAction(title: "Go on", style: .default) { (goon) in
                self.performSegue(withIdentifier: "BaldiMood", sender: nil)
                
               
            
            
        }
            
            
            
            
            self.present(baldiAlert, animated: true)
            baldiAlert.addAction(cancelAction)
            baldiAlert.addAction(goonAction)
        
    }
        

    }
}
