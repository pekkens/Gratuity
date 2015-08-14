//
//  ByServiceViewController.swift
//  Gratuity
//
//  Created by Prisca Ekkens on 7/8/15.
//  Copyright (c) 2015 Prisca Ekkens. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

protocol ByServiceViewControllerDelegate: class {
    func byServiceViewControllerDidChangeValue(viewController: ByServiceViewController, value: Float)
}

class ByServiceViewController: UIViewController, CLLocationManagerDelegate {
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
        delegate?.byServiceViewControllerDidChangeValue(self, value: 15)
    
    }
    
    @IBAction func housekeeperValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 5)

    }
    
    @IBAction func waitStaffValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 20)
   
    }
    
    @IBAction func bartenderValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 15)
        
    }
    
    @IBAction func petServicesValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 15)
        
    }
    
    @IBAction func salonValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 15)
        
    }
    
    @IBAction func deliveryValueBtn(sender: AnyObject) {
        delegate?.byServiceViewControllerDidChangeValue(self, value: 10)
        
    }
    
    var locationManager = CLLocationManager()
    
    @IBAction func locButton(sender: AnyObject) {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationManager.startUpdatingLocation()
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    //TODO: create a method that once service type button is pressed will change percent value depending on location
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}