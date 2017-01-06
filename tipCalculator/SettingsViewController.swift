//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Vinnie Chen on 12/30/16.
//  Copyright © 2016 Vinnie Chen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Saves the new percentages
    @IBAction func saveButtonTouch(_ sender: Any) {
        if !(firstTextField.text?.isEmpty)! {
            tipPercentages[0] = Double(firstTextField.text!)!
        }
        if !(secondTextField.text?.isEmpty)! {
            tipPercentages[1] = Double(secondTextField.text!)!
        }
        if !(thirdTextField.text?.isEmpty)! {
            tipPercentages[2] = Double(thirdTextField.text!)!
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
