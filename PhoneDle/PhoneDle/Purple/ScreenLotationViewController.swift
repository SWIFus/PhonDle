//
//  ScreenLotationViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/07.
//

import UIKit

class ScreenLotationViewController: UIViewController {

    @IBOutlet weak var screenRotation: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        determineScreenRotation()
    }
    
    func determineScreenRotation() {
        if UIDevice.current.orientation.isLandscape {
            print("landscape")
        } else {
            print("portrait")
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        determineScreenRotation()
        print("completed")
        colorall(index: 33)
        complete(main: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
