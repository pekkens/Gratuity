//
//  ByCalViewController.swift
//  Gratuity
//
//  Created by Prisca Ekkens on 7/8/15.
//  Copyright (c) 2015 Prisca Ekkens. All rights reserved.
//

import UIKit
import CoreLocation


class ByCalculationViewController: UIViewController, ByServiceViewControllerDelegate {
    func byServiceViewControllerDidChangeValue(viewController: ByServiceViewController, value: Float) {
        percentageSlider.setValue(value, animated: true)
        
        var valueForDisplay = String(format: "%.0f", value)
        var valueFromBtnPressed = value / 100
    
        var amountEntered = NSString(string: amountTextField.text).floatValue
     
        var sumOfAmountAndTip = valueFromBtnPressed * amountEntered
        var sumOfAmountAndTipString = String(format: "+%.2f", sumOfAmountAndTip)
        
        var grandTotal = sumOfAmountAndTip + amountEntered
        
        percentageLabel.text = "\(valueForDisplay)"
        tipAmountLabel.text = "\(sumOfAmountAndTipString)"
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
        
    }

    //TODO: create function to update labels once any action is taken, not just slider.
    
    
    // MARK: Inputs
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var percentageSlider: UISlider!
    
    
    // MARK: Labels
    
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var grandTotalLabel: UILabel!
    
    // Mark: Actions
    
    @IBOutlet weak var menuBtn: UIButton!
    
    
    @IBAction func sliderValueDidChange(sender: UISlider){
         
        var valueFromSlider = Int(sender.value)
        var valueFromSliderDouble = Float(valueFromSlider) / 100
        
        var amountEntered = NSString(string: amountTextField.text).floatValue
        
        var sumOfAmountAndTip = valueFromSliderDouble * amountEntered
        var sumOfAmountAndTipString = String(format: "+%.2f", sumOfAmountAndTip)
        
        var grandTotal = sumOfAmountAndTip + amountEntered
        
        percentageLabel.text = "\(valueFromSlider)"
        tipAmountLabel.text = "\(sumOfAmountAndTipString)"
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
        
    }
    
    
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
    
}