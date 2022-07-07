//
//  AlertViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.showAlert()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "PASS", message: "What should you touch?", preferredStyle: UIAlertController.Style.alert)
        let yes = UIAlertAction(title: "YES", style: .default, handler: {
            action in
            colorall(index: 51)
            completeG(main: self)
        })
        let no = UIAlertAction(title: "NO", style: .destructive, handler: nil)
        
        alert.addAction(yes)
        alert.addAction(no)
        
        self.present(alert, animated: true, completion: nil)
    }
}
