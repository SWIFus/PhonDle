//
//  SwipeViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class SwipeViewController: UIViewController {
    @IBOutlet var swipeRec: UISwipeGestureRecognizer!
    @IBOutlet weak var swipe: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        swipeRec.direction = .left
    }
    
    
    @IBAction func swiped(_ sender: Any) {
        if swipeRec.direction == .left {
            colorall(index: 60)
            completeG(main: self)
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
