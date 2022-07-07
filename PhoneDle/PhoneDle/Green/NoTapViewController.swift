//
//  NoTapViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class NoTapViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var tapAbleVIew: UIView!
    var secondsLeft: Int = 60

    override func viewDidLoad() {
        super.viewDidLoad()

        tapAbleVIew.layer.cornerRadius = 10
        timerLabel.text = "00:60"
        
        let tapRec = UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        tapAbleVIew.addGestureRecognizer(tapRec)
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (t) in
            self.secondsLeft -= 1
            
            var minutes = self.secondsLeft / 60
            var seconds = self.secondsLeft % 60

            if self.secondsLeft > 0 {
                self.timerLabel.text = String(format: "%02d:%02d", minutes, seconds)
            } else {
                self.timerLabel.text = "Tab the green!"
            }
        })
    }
    

    @objc func didTapView(_ sender: UITapGestureRecognizer) {
        colorall(index: 46)
        completeG(main: self)
    }

}
