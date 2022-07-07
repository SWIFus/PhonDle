//
//  OrangeCompleteViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/21.
//

import UIKit

class OrangeCompleteViewController: UIViewController, UITextViewDelegate {

    let endTextView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        self.view.backgroundColor = .orange
        
        let swipeTop = UISwipeGestureRecognizer(target: self, action: #selector(setGesture(_:)))
        swipeTop.direction = .up
        self.view.addGestureRecognizer(swipeTop)
        
        setTextView()
        endTextView.fadeIn()
    }
    
    func setTextView() {
        endTextView.alpha = 0.0
        endTextView.delegate = self
        endTextView.center = view.center
        endTextView.text = "COMPLETE"
        endTextView.font = UIFont.systemFont(ofSize: 40)
        endTextView.textAlignment = .center
        endTextView.refreshControl?.contentVerticalAlignment = .center
        endTextView.textColor = .white
        endTextView.backgroundColor = .orange
        endTextView.isEditable = false
        self.view.addSubview(endTextView)
    }
    
   @objc func setGesture(_ sender: UISwipeGestureRecognizer) {
       self.navigationController?.popToRootViewController(animated: true)

    }
}
