//
//  ViewController.swift
//  The Ultimate Baldi
//
//  Created by Kyle Chung on 12/11/18.
//  Copyright © 2018 Kyle Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet var QuestionImage: UIImageView!
    
    @IBOutlet var whatToSee: UILabel!
    
    @IBOutlet var textfield1: UITextField!
    @IBOutlet var textfield2: UITextField!
    
    
    
    
    func textFieldShouldRespond1 (textfield1: UITextField) -> Bool {
        textfield1.resignFirstResponder()
        return true
    }
    
    func textFieldShouldReturn2 (textfield2: UITextField) -> Bool {
        textfield2.resignFirstResponder()
        return true
    }
    
    @IBAction func imagequestionChange(_ sender: Any) {
        
        QuestionImage.image = UIImage(named: "?")
        whatToSee.text = "Now tell me what you want to see!"
        
    }
    
    @IBAction func imagebutton1(_ sender: UIButton) {
        textFieldShouldRespond1(textfield1: textfield1)
        if textfield1.text == "girl" {
            QuestionImage.image = UIImage(named: "playtime")
            whatToSee.text = "This is playtime. She's always looking for someone to play with. \"I wanna play with someone!\""
        } else if textfield1.text == "teacher" {
            QuestionImage.image = UIImage(named: "Baldi kills you")
            whatToSee.text = "This is Baldi. Your professional teacher of the basics in Education and Learning!"
        } else {
            QuestionImage.image = UIImage(named: "?")
            whatToSee.text = ""
            
        }
        
        // inheritance challenge shows for battery level
        
        
    }
    @IBAction func imagebutton2(_ sender: Any) {
        textFieldShouldReturn2(textfield2: textfield2)
        if textfield2.text == "girl" {
            QuestionImage.image = UIImage(named: "playtime")
            whatToSee.text = "This is playtime. She's always looking for someone to play with. \"I wanna play with someone!\""
        } else if textfield2.text == "teacher" {
            QuestionImage.image = UIImage(named: "Baldi kills you")
            whatToSee.text = "This is Baldi. Your professional teacher of the basics in Education and Learning!"
            
        } else {
            whatToSee.text = ""
            QuestionImage.image = UIImage(named: "?")
            
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textfield2.resignFirstResponder()
        textfield1.resignFirstResponder()
        return true
    }
    
    
    
    
}

