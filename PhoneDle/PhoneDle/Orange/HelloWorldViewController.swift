//
//  HelloWorldViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/24.
//

import UIKit

class HelloWorldViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var worldLabel: UILabel!
    @IBOutlet weak var helloSegment: UISegmentedControl!
    @IBOutlet weak var worldSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.textAlignment = .center
        worldLabel.textAlignment = .right
    
        
        helloSegment.selectedSegmentIndex = helloLabel.textAlignment.rawValue
        worldSegment.selectedSegmentIndex = worldLabel.textAlignment.rawValue
    }
    
    @IBAction func helloSegmentChanged(_ sender: UISegmentedControl) {
        helloLabel.textAlignment = NSTextAlignment(rawValue: sender.selectedSegmentIndex) ?? .center
        isClaer()
    }
    
    @IBAction func worldSegmentChanged(_ sender: UISegmentedControl) {
        worldLabel.textAlignment = NSTextAlignment(rawValue: sender.selectedSegmentIndex) ?? .center
        isClaer()
    }
    
    func isClaer() {
        if helloLabel.textAlignment.rawValue == 2 && worldLabel.textAlignment.rawValue == 0 {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                colorall(index: 23)
                completeO(main: self)
            }

        }
    }
}
