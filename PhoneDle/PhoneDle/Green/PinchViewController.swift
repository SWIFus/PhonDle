//
//  PinchViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class PinchViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 10.0
        if scrollView.zoomScale > 1.5 {
            colorall(index: 53)
            completeG(main: self)
        }
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return artImage
    }

}
