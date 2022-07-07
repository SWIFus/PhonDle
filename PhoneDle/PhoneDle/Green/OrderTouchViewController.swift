//
//  OrderTouchViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class OrderTouchViewController: UIViewController {
    @IBOutlet weak var buttonP: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonS1: UIButton!
    @IBOutlet weak var buttonS2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var word = ""
    
    @IBAction func pressP(_ sender: Any) {
        print("P pressed")
        word += "P"
        print(word)
        checkWord()
    }
    
    @IBAction func pressA(_ sender: Any) {
        print("A pressed")
        word += "A"
        print(word)
        checkWord()
    }
    
    @IBAction func pressS1(_ sender: Any) {
        print("S1 pressed")
        word += "S"
        print(word)
        checkWord()

    }
    
    @IBAction func pressS2(_ sender: Any) {
        print("S2 pressed")
        word += "S"
        print(word)
        checkWord()
    }
    
    func checkWord() {
        if word == "PASS" {
            colorall(index: 47)
            completeG(main: self)
        }
        else {
            print("not yet")
        }
    }
    

}
