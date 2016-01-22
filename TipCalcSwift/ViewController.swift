//
//  ViewController.swift
//  TipCalcSwift
//
//  Created by Shruti Gandhi on 9/1/15.
//  Copyright (c) 2015 Shruti Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var TipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
    
        var tipPercentages = [0.18, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmountDouble = billField.text
        var billAmount = Double((billAmountDouble as NSString).doubleValue)
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        TipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        TipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    

}

