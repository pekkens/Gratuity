//
//  ByCalViewController.swift
//  Gratuity
//
//  Created by Prisca Ekkens on 7/8/15.
//  Copyright (c) 2015 Prisca Ekkens. All rights reserved.
//

import UIKit


class ByCalculationViewController: UIViewController, ByServiceViewControllerDelegate {
    func byServiceViewControllerDidChangeValue(viewController: ByServiceViewController, value: Float) {
        percentageSlider.setValue(value, animated: true)
        percentageLabel.text = "\(value)"
        
    }
    
    
    // MARK: Inputs
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var percentageSlider: UISlider!
    
    
    // MARK: Labels
    
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var grandTotalLabel: UILabel!
    
    // Mark: Actions
    
    
    @IBAction func sliderValueDidChange(sender: UISlider) {
         
        var valueFromSlider = Int(sender.value)
        var valueFromSliderDouble = Double(valueFromSlider) / 100
        
        var amountEntered = NSString(string: amountTextField.text).doubleValue
        
        var sumOfAmountAndTip = valueFromSliderDouble * amountEntered
        var sumOfAmountAndTipString = String(format: "+%.2f", sumOfAmountAndTip)
        
        var grandTotal = sumOfAmountAndTip + amountEntered
        
        percentageLabel.text = "\(valueFromSlider)"
        tipAmountLabel.text = "\(sumOfAmountAndTipString)"
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
        
    }
    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let byServiceViewController = segue.destinationViewController as! ByServiceViewController
        byServiceViewController.delegate = self
    }
    
    override func viewDidLoad() {
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "didTapView")
        self.view.addGestureRecognizer(tapRecognizer)
    }
    
    
    func didTapView(){
        self.view.endEditing(true)
    }
    
    // MARK: ByServiceViewController Delegate
    
    func taxiButtonPressed(UIButton: ByServiceViewController, sender: AnyObject) {
        var taxiTipValue = 0.15
        println(taxiTipValue)
    }
    
    func housekeepingButtonPressed(UIButton: ByServiceViewController, sender: AnyObject) {
        var housekeepingTip = 3
        
        grandTotalLabel.text = "\(housekeepingTip)"
    }
    
}