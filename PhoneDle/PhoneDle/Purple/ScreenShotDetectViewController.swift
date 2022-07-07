//
//  ScreenShotDetectViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/07.
//

import UIKit

class ScreenShotDetectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myView = BorderAnimation2()
        myView.frame = CGRect(x: 107, y: 288, width: 200, height: 320)
        myView.center = view.center
        view.addSubview(myView)
        
        NotificationCenter.default.addObserver(forName: UIApplication.userDidTakeScreenshotNotification, object: nil, queue: OperationQueue.main) { notification in
            print("done")
            colorall(index: 32)
            complete(main: self)
        }
    }
    
}
