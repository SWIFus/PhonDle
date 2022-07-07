//
//  RouletteViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/17.
//

import UIKit

class RouletteViewController: UIViewController {
    
    lazy var images: [UIImage] = {
        return (0...6).compactMap { UIImage(named: "slot-machine-\($0)") }
    }()
    
    
    @IBOutlet weak var shufflebutton: UIButton!
    @IBOutlet weak var picerView: UIPickerView!
    
    @IBAction func shuffleButton(_ sender: Any) {
        let firstIndex = Int.random(in: 0..<images.count) + images.count
        let secondIndex = Int.random(in: 0..<images.count) + images.count
        let thirdIndex = Int.random(in: 0..<images.count) + images.count
        
        picerView.selectRow(firstIndex, inComponent: 0, animated: true)
        picerView.selectRow(secondIndex, inComponent: 1, animated: true)
        picerView.selectRow(thirdIndex, inComponent: 2, animated: true)
        
        if firstIndex == secondIndex && secondIndex == thirdIndex {
                self.shufflebutton.isEnabled = false
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                    colorall(index: 8)
                    completeO(main: self)
                }
                
                
                
            
           

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        picerView.isUserInteractionEnabled = false
        
        picerView.reloadAllComponents()
        shuffleButton(1)
        // Do any additional setup after loading the view.
    }

    
}

extension RouletteViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count * 3
    }
    
    
}

extension RouletteViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        if let imageView = view as? UIImageView {
            imageView.image = images[row % images.count]
            return imageView
        }
        
        let imageView = UIImageView()
        imageView.image = images[row % images.count]
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
}
