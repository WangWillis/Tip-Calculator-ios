//
//  ViewController.swift
//  Calculator Project
//
//  Created by Willis Wang on 12/2/16.
//  Copyright © 2016 Willis Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let TIP_VALUES = [0.10, 0.15, 0.18] //tips that can be calculated

    @IBOutlet weak var billField: UITextField! //holds the value of total bill before tip
    @IBOutlet weak var tipLabel: UILabel! //holds/shows value for amount of tip
    @IBOutlet weak var totalLabel: UILabel! //holds/shows the total bill
    @IBOutlet weak var tipControl: UISegmentedControl! //sets the tip amount
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //dismiss the keyboard when tap on screen
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true) //true to force editing end
    }
    
    func calcTip(){
        //hold the value of the bill as a doulbe
        let bill = Double(billField.text!) ?? 0 //if invalid return 0
        let tip = bill * TIP_VALUES[tipControl.selectedSegmentIndex] //holds the value of the tip
        let total = bill + tip //holds the total bill
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }
    
    @IBAction func billChange(_ sender: Any) {
        calcTip()
    }
    
    @IBAction func tipChange(_ sender: Any) {
        calcTip()
    }
    
}

