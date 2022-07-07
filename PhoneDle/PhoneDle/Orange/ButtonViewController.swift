//
//  ButtonViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/17.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTouched(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            colorall(index: 16)
            completeO(main: self)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
