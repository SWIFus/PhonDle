//
//  TurnOnWiFiViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/07.
//

import UIKit

class TurnOnWiFiViewController: UIViewController {

    @IBOutlet weak var internetImageView: UIImageView!
    
    let lowInternet = "lowSignal.png"
    let highInternet = "enoughSignal.png"
    let noInternet = "NoInternet.png"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(statusManager), name: .flagsChanged, object: nil)
        updateUserInterface()
    }
    

    
    func updateUserInterface() {
        switch Network.reachability.status {
        case .unreachable:
            view.backgroundColor = .black
            print("wifi pls")
            internetImageView.image = UIImage(named: noInternet)?.withTintColor(UIColor(displayP3Red: 173/255, green: 79/255, blue: 224/255, alpha: 1))
            self.view.addSubview(internetImageView)
            
        case .wwan:
            view.backgroundColor = .black
            print("only cellular")
            internetImageView.image = UIImage(named: lowInternet)?.withTintColor(UIColor(displayP3Red: 173/255, green: 79/255, blue: 224/255, alpha: 1))
            self.view.addSubview(internetImageView)
            
        case .wifi:
            view.backgroundColor = UIColor(displayP3Red: 173/255, green: 79/255, blue: 224/255, alpha: 1)
            print("complete")
            internetImageView.image = UIImage(named: highInternet)?.withTintColor(.white)
            self.view.addSubview(internetImageView)
            colorall(index: 39)
            complete(main: self)
        }
    }
    
    @objc func statusManager(_ notification: Notification) {
        updateUserInterface()
    };

}
