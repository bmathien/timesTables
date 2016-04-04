//
//  ViewController.swift
//  times table
//
//  Created by Mathien on 1/8/16.
//  Copyright © 2016 Mathien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myAnswerLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    let numbers = [0,1,2,3,4,5,6,7,8,9,10,11,12]
    var answer = 0
    var field = 0
    var answerString = ""


    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
   
    @IBAction func calculateBUttonTapped(sender: UIButton)
    {
        myAnswerLabel.text = ""
        let input = Int(myTextField.text!)
        field = input!

        for item in numbers
        {
            answer = item * input!
            answerString = "\(input!) x \(numbers.indexOf(item)!) = \(answer)"
    
            myAnswerLabel.text! += answerString + "\n"
        }

        myTextField.resignFirstResponder()
    }

    @IBAction func screenTapped(sender: AnyObject)
    {
        field++
        myAnswerLabel.text = ""
        myTextField.text = String(field)

        for item in numbers
        {
            answer = item * field
            answerString = "\(field) x \(numbers.indexOf(item)!) = \(answer)"

            myAnswerLabel.text! += answerString + "\n"
        }
        
        myTextField.resignFirstResponder()

    }



}

