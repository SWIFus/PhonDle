//
//  EdgeSwipeViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/07.
//

import UIKit

class EdgeSwipeViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var signImageView: UIImageView!
    
    var checker:Bool = false
    var isTurn:Bool = false
    
    let fadeAnimation: CABasicAnimation = CABasicAnimation(keyPath: "contents")
      var myView = UIView()
      let random = Int.random(in: 1..<3)
      
      override func viewDidLoad() {
          super.viewDidLoad()
          setMyView()
          rightEdge()
          Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeVC), userInfo: nil, repeats: true)
          
      }

      func setMyView() {
          myView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
          myView.backgroundColor = .black
          myView.layer.cornerRadius = 30
      }
      
      func rightEdge() {
          addRightBorder(andWidth: 6)
          rightEdgeTouch()
          signImageView.image = UIImage(systemName: "arrow.left")?.withTintColor(UIColor(displayP3Red: 173/255, green: 79/255, blue: 224/255, alpha: 1), renderingMode: .alwaysOriginal)
      }
      
      func rightEdgeTouch() {
          let rightEdgeGesture = UIScreenEdgePanGestureRecognizer.init(target: self, action: #selector(self.didPanningScreenRight(_:)))
          rightEdgeGesture.edges = .right
          rightEdgeGesture.delegate = self
          self.view.addGestureRecognizer(rightEdgeGesture)
      }

      func addRightBorder(andWidth borderWidth: CGFloat) {
          let border = BorderAnimation1()
          border.autoresizingMask = [.flexibleHeight, .flexibleLeftMargin]
          border.frame = CGRect(x: myView.frame.size.width - borderWidth, y: 0, width: borderWidth, height: myView.frame.size.height)
          view.addSubview(border)
      }
      
      @objc func didPanningScreenRight(_ recognizer: UIScreenEdgePanGestureRecognizer) {
          print("right edge swiped")
          checker = true
      }
    @objc func changeVC() {
        if checker && !isTurn{
            colorall(index: 25)
            complete(main: self)
            isTurn = true
        }
    }
  }

  extension UIImageView {
      func setImage(_ image: UIImage?, animated: Bool = true) {
          let duration = animated ? 0.3 : 0.0
          UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
              self.image = image
          }, completion: nil)
      }
  }

