//
//  ViewController.swift
//  tipCalculator
//
//  Created by Vinnie Chen on 12/29/16.
//  Copyright © 2016 Vinnie Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var settingsBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    
        // Does not show settings button in nav bar ?
        self.navigationItem.setRightBarButton(settingsBarButton, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // hides keyboard on tap
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    // calculate tip once number entered in text field
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.20, 0.25]
        
        
        let bill = Double(billTextField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip) // %.2f two decimal places
        totalLabel.text = String(format: "$%.2f", total)
    }
}

