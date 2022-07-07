//
//  TimeTouchViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/23.
//

import UIKit

class TimeTouchViewController: UIViewController {

    var count = 50
    let timeSelector: Selector = #selector(TimeTouchViewController.updateTime)
    let interval = 1.0
    var count_2 = 10
    let alert = UIAlertController(title: "Clear", message: nil , preferredStyle: UIAlertController.Style.alert)
    var checker = false
    let okAction = UIAlertAction(title: "OK", style: .default) { (action) in }
    
    @IBOutlet weak var Timer: UILabel!
    @IBOutlet weak var CountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CountLabel.text = "\(count)"
        
        
        
        Foundation.Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)

    }
    
    
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        
        
        if sender.state == .ended {
            
            checker = true
            
            count -= 1
            CountLabel.text = "\(count)"
            
            if count == 10 {
                CountLabel.font = UIFont.systemFont(ofSize: 40)
            }
            
            if count == 0 {
                checker = false
                colorall(index: 37)
                completeB(main: self)
            }
        }
        
        
    }
    
    
    @objc func updateTime() {
        if checker {
        
            count_2 = count_2 - 1
            if count_2 == 0 && count > 0 {
                count_2 = 10
                count = 50
                CountLabel.font = UIFont.systemFont(ofSize: 250)
                CountLabel.text = String(count)
                checker = false
            }
            Timer.text = String(count_2)
                            
        }
    }
}
