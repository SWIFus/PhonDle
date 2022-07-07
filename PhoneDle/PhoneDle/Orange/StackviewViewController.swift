//
//  StackviewViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/31.
//

import UIKit

class StackviewViewController: UIViewController {

    @IBOutlet weak var firstStack: UIStackView!
    @IBOutlet weak var secondStack: UIStackView!
    @IBOutlet weak var thirdStack: UIStackView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstStack.axis = .horizontal
        secondStack.axis = .horizontal
        thirdStack.axis = .horizontal

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondButtonPushed(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            if self.secondStack.axis == .vertical {
                self.secondStack.axis = .horizontal
            } else {
                self.secondStack.axis = .vertical
            }
        }
        
        if thirdStack.axis == .vertical && secondStack.axis == .vertical && firstStack.axis == .vertical {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                colorall(index: 24)
                completeO(main: self)
            }

        }
    }
    
    @IBAction func firstButtonPushed(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            if self.firstStack.axis == .vertical {
                self.firstStack.axis = .horizontal
            } else {
                self.firstStack.axis = .vertical
            }
        }
        
        if thirdStack.axis == .vertical && secondStack.axis == .vertical && firstStack.axis == .vertical {
            print("clear")
        }
    }
    
    @IBAction func thirdButtonPushed(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            if self.thirdStack.axis == .vertical {
                self.thirdStack.axis = .horizontal
            } else {
                self.thirdStack.axis = .vertical
            }
        }
        
        if thirdStack.axis == .vertical && secondStack.axis == .vertical && firstStack.axis == .vertical {
            print("clear")
        }
    }
    
}
