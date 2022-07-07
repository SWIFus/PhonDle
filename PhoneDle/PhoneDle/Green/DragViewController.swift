//
//  DragViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class DragViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeNewRec()
        
        makeCircle()
        
        let gesutre = UIPanGestureRecognizer(target: self, action: #selector(draggingView))
        
        imageView.addGestureRecognizer(gesutre)
    }

    func makeNewRec() {
        let rect: CGRect = .init(origin: CGPoint(x: 198.5, y: 198.5), size: CGSize(width: 5, height: 5))
        let myView: UIView = .init(frame: rect)
        myView.backgroundColor = .white
        myView.alpha = 0.2
        myView.clipsToBounds = true
        myView.layer.cornerRadius = myView.bounds.width / 2
        self.view.addSubview(myView)
    }
    
    func makeCircle() {
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.bounds.width / 2
    }
    
    @objc func draggingView(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        let draggedView = sender.view!
        draggedView.center = point
        if draggedView.center.x < 202.5 && draggedView.center.x > 198.5 {
            if draggedView.center.y < 202.5 && draggedView.center.y > 198.5 {
                print("--COMPLETE--")
                colorall(index: 45)
                completeG(main: self)
            }
        }
        
    }


}
