//
//  DayChangeViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/23.
//

import UIKit

public extension UIImage {
    static let Moon = UIImage(named: "moon")
}

public extension UIImage {
    static let Sun = UIImage(named: "sun")
}


class DayChangeViewController: UIViewController {


    @IBOutlet weak var testimage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testimage.image = UIImage.Sun
        // Do any additional setup after loading the view.
    }
    

    
     @IBAction func LongPress(_ sender: UILongPressGestureRecognizer) {
         if sender.state == .began {
             self.testimage.image = UIImage.Moon
             colorall(index: 36)
             completeB(main: self)
             
             
             
             
         }
     }

}
