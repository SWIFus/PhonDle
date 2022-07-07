//
//  DetectChargeViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/07.
//

import UIKit

class DetectChargeViewController: UIViewController {

    @IBOutlet weak var chargeImage: UIImageView!
    
    var realTime = Timer()
    var timeTrigger = true

    
    override func viewDidLoad() {
        super.viewDidLoad()

        _repeat()
        chargeImage.image = UIImage(named: "charge")?.withTintColor(UIColor(displayP3Red: 173/255, green: 79/255, blue: 224/255, alpha: 1))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5) {
            self.chargeImage.alpha = 1.0
        }
    }
    
    
    func fadeIn(duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration, animations: {
            self.chargeImage.alpha = 1.0
        })
    }
    
    func fadeOut(duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration, animations: {
            self.chargeImage.alpha = 0.0
        })
    }

    func detectCharge() {
        UIDevice.current.isBatteryMonitoringEnabled = true
        
        if (UIDevice.current.batteryState != .unplugged) {
            colorall(index: 18)
            complete(main: self)
            stopRepeat()
        } else {
            print("Please charge device")
        }
    }
    
    func _repeat() {
        if (timeTrigger) {
            checkTimeTrigger()
        }
    }
    
    func checkTimeTrigger() {
        realTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        timeTrigger = false
    }
    
    @objc func updateCounter() {
        fadeOut()
        fadeIn()
        detectCharge()
    }
    
    func stopRepeat() {
        timeTrigger = true
        realTime.invalidate()
    }


}
