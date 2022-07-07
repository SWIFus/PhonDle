//
//  TextButtonViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/31.
//

import UIKit

class TextButtonViewController: UIViewController {
    
    var touchCount = 0
    @IBOutlet weak var HelloButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearButton.isEnabled = false
        clearButton.alpha = 0
        HelloButton.setTitle("FAKE \(touchCount)", for: .highlighted)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fakeTouched(_ sender: Any) {
        touchCount += 1
        HelloButton.setTitle("FAKE \(touchCount)", for: .highlighted)
        if touchCount >= 10 {
            clearButton.alpha = 1
            clearButton.isEnabled = true
        }
    }
    @IBAction func clearButtonPushed(_ sender: Any) {
        colorall(index: 30)
        completeO(main: self)

    }
    
}
