//
//  ViewController.swift
//  Gratuity
//
//  Created by Prisca Ekkens on 7/8/15.
//  Copyright (c) 2015 Prisca Ekkens. All rights reserved.
//

import UIKit
import AVFoundation


class SplashViewController: UIViewController {
    
    
    // MARK: Output
    
    @IBOutlet weak var enterBtn: UIButton!
    
    // MARK: Output
    
    
    override func viewWillAppear(animated: Bool) {
        
        let firstImageView = UIImageView(image: UIImage(named: "CoinAnimated01.png"))
        firstImageView.frame = view.frame
        view.addSubview(firstImageView)
        
        imageFadeIn(firstImageView)
    }
    
    func imageFadeIn(imageView: UIImageView) {
        
        let secondImageView = UIImageView(image: UIImage(named: "CoinAnimated02.png"))
        secondImageView.frame = view.frame
        secondImageView.alpha = 0.0
        
        view.insertSubview(secondImageView, aboveSubview: imageView)
        
        UIView.animateWithDuration(0.01, delay: 0.2, options: .CurveEaseOut, animations: {
            secondImageView.alpha = 1.0
            }, completion: {_ in
                imageView.image = secondImageView.image
                secondImageView.removeFromSuperview()
                
        })
        
        let thirdImageView = UIImageView(image: UIImage(named: "CoinAnimated03.png"))
        thirdImageView.frame = view.frame
        thirdImageView.alpha = 0.0
        
        view.insertSubview(thirdImageView, aboveSubview: imageView)
        
        UIView.animateWithDuration(0.08, delay: 0.3, options: .CurveEaseOut, animations: {
            thirdImageView.alpha = 1.0
            }, completion: {_ in
                imageView.image = thirdImageView.image
                thirdImageView.removeFromSuperview()
                
        })
        
        let fourthImageView = UIImageView(image: UIImage(named: "CoinAnimated04.png"))
        fourthImageView.frame = view.frame
        fourthImageView.alpha = 0.0
        
        view.insertSubview(fourthImageView, aboveSubview: imageView)
        
        UIView.animateWithDuration(0.01, delay: 0.4, options: .CurveEaseOut, animations: {
            fourthImageView.alpha = 1.0
            }, completion: {_ in
                imageView.image = fourthImageView.image
                fourthImageView.removeFromSuperview()
                
        })
        
        let fifthImageView = UIImageView(image: UIImage(named: "CoinAnimated05.png"))
        fifthImageView.frame = view.frame
        fifthImageView.alpha = 0.0
        
        view.insertSubview(fifthImageView, aboveSubview: imageView)
        
        UIView.animateWithDuration(0.01, delay: 0.5, options: .CurveEaseOut, animations: {
            fifthImageView.alpha = 1.0
            }, completion: {_ in
                imageView.image = fifthImageView.image
                fifthImageView.removeFromSuperview()
                
        })
        
    }
    
    var soundEffect = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("coinSound", ofType: "wav")!), error: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundEffect.play()
        self.enterBtn.alpha = 0
        
        UIView.animateWithDuration (1.0, animations: { () -> Void in
            self.enterBtn.alpha = 0.8
            
        })
    }
}