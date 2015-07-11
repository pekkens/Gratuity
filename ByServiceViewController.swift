//
//  ByServiceViewController.swift
//  Gratuity
//
//  Created by Prisca Ekkens on 7/8/15.
//  Copyright (c) 2015 Prisca Ekkens. All rights reserved.
//

import Foundation
import UIKit

protocol ByServiceViewControllerDelegate: class {
    func byServiceViewControllerDidChangeValue(viewController: ByServiceViewController, value: Float)
}

class ByServiceViewController: UIViewController {
    // MARK: Outlets
    
    @IBOutlet weak var taxi: UIButton!
    @IBOutlet weak var housekeeping: UIButton!
    @IBOutlet weak var tableService: UIButton!
    @IBOutlet weak var bartender: UIButton!
    @IBOutlet weak var bagHandler: UIButton!
    @IBOutlet weak var manicurist: UIButton!
    @IBOutlet weak var delivery: UIButton!
    
    weak var delegate: ByServiceViewControllerDelegate?

    // MARK: Actions
    
    @IBAction func taxiValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 15.0)
        println(0.15)
    }
    
    @IBAction func housekeepingValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 10.0)
        println(0.10)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}