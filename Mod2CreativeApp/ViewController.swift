//
//  ViewController.swift
//  Mod2CreativeApp
//
//  Created by JAXON SCHRAUT on 9/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var numberOne: UITextField!
    @IBOutlet weak var numberTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func addButton(_ sender: UIButton) {
        var num1 = 0
        var num2 = 0
        if Int(numberOne.text!) != nil{
            num1 = Int(numberOne.text!)!
        }
        if Int(numberTwo.text!) != nil{
            num2 = Int(numberTwo.text!)!
        }
        let total = num1+num2
        answerLabel.text = String(total)
        numberOne.resignFirstResponder()
        numberTwo.resignFirstResponder()
    }
    
    @IBAction func modButton(_ sender: UIButton) {
        var num1 = 0
        var num2 = 0
        if Int(numberOne.text!) != nil{
            num1 = Int(numberOne.text!)!
        }
        if Int(numberTwo.text!) != nil{
            num2 = Int(numberTwo.text!)!
        }
        var total = 0
        if num2 != 0 {
            total = Int(num1 % num2)
            answerLabel.text = String(total)
        } else {
            answerLabel.text = "Error"
        }
        
        numberOne.resignFirstResponder()
        numberTwo.resignFirstResponder()
    }
    
    @IBAction func pythagoreanButton(_ sender: UIButton){
        var num1 = 0.0
        var num2 = 0.0
        if Int(numberOne.text!) != nil{
            num1 = Double(numberOne.text!)!
        }
        if Int(numberTwo.text!) != nil{
            num2 = Double(numberTwo.text!)!
        }
        let total = sqrt((num1*num1)+(num2*num2))
        answerLabel.text = String(total)
        numberOne.resignFirstResponder()
        numberTwo.resignFirstResponder()
    }
    
}

