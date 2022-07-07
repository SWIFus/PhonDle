//
//  RGBSliderViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/17.
//

import UIKit

class RGBSliderViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var isClear = false
    
    @IBAction func sliderChange(_ sender: Any) {
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        
        view.backgroundColor = color
        redSlider.thumbTintColor = color
        greenSlider.thumbTintColor = color
        blueSlider.thumbTintColor = color
        
        if  (r > 0.95) && (g > 0.55 && g < 0.6) && b < 0.1 && !isClear {
            isClear = true
            redSlider.isEnabled = false
            greenSlider.isEnabled = false
            blueSlider.isEnabled = false
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                colorall(index: 15)
                completeO(main: self)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isClear = false
        
        redSlider.setValue(0, animated: true)
        greenSlider.setValue(0, animated: true)
        blueSlider.setValue(0, animated: true)
        // Do any additional setup after loading the view.
        
    }

}
