//
//  EscapeViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/23.
//

import UIKit

class EscapeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clearChanged(_ sender: UISwipeGestureRecognizer) {
        
        colorall(index: 43)
        completeB(main: self)
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
