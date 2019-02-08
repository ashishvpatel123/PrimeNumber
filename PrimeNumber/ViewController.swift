//
//  ViewController.swift
//  PrimeNumber
//
//  Created by IMCS2 on 2/7/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func checkButonClicked(_ sender: Any) {
    
        
    
        let givenNumber:Int?  = Int(userInput.text!)
        
        var flag = false
        
        var i=2
        
        while(i<givenNumber!){

            if givenNumber! % i == 0{
                flag = true
                break
            }
            //print("i =  \(i)  given = \(givenNumber)")
            i=i+1
        }

        if flag {
            result.text = " Not Prime"
        }else{
            result.text = "Prime"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        checkButton.layer.cornerRadius = 10
        checkButton.clipsToBounds = true
        
    }


}

