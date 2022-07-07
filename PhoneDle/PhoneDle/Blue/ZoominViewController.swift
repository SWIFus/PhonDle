//
//  ZoominViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/23.
//

import UIKit

public extension UIImage {
    static let Image = UIImage(named: "logo")
}

class ZoominViewController: UIViewController {
    
    let alert = UIAlertController(title: "Clear", message: nil , preferredStyle: UIAlertController.Style.alert)
    var picScale: Float = 1.0

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        
        guard let targetView = sender.view else {
            return
        }
        
        targetView.transform = targetView.transform.scaledBy(x: sender.scale, y: sender.scale)
        
        
        picScale = picScale * Float(sender.scale)
        
        
        sender.scale = 1
        
        if picScale > 3.9 {
            colorall(index: 44)
            completeB(main: self)
            sender.scale = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.layer.cornerRadius = 10
        self.imageView.layer.borderColor = UIColor.gray.cgColor
        self.imageView.layer.borderWidth = 3
        self.imageView.image = UIImage.Image
        
    }
    


}
