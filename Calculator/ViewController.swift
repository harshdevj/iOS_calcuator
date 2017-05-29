//
//  ViewController.swift
//  Calculator
//
//  Created by System Administrator on 5/29/17.
//  Copyright © 2017 Harshdev Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var number1:Double = 0
    var number2:Double = 0
    var operation:String = ""
    
    @IBAction func operation(_ sender: UIButton) {
        switch sender.tag {
        case 12, 13, 14, 15:
            operation = (sender.titleLabel?.text)!
            number1 = Double(lbl.text!)!
            lbl.text = ""
            break
        default:
            number2 = Double(lbl.text!)!
            performOpertion()
            //debugPrint("Invalid input")
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        number1 = 0
        number2 = 0
        operation = ""
        lbl.text = ""
    }
    
    func performOpertion() {
        switch operation {
            case "%":
                lbl.text = "\(number1 / number2)"
                break
            case "x":
                lbl.text = "\(number1 * number2)"
                break
            case "-":
                lbl.text = "\(number1 - number2)"
                break
            case "+":
                lbl.text = "\(number1 + number2)"
                break
        default:
            debugPrint("Invalid operation")
        }
    }
    
    @IBAction func number(_ sender: UIButton) {
        lbl.text = lbl.text! + String(sender.tag-1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

