//
//  PickerViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/05/17.
//

import UIKit

class PickerViewController: UIViewController {
    
    
    let locations = ["Busan", "Incheon", "Daegu", "Gwangju", "Jeju", "Daejeon", "Ulsan", "New York", "Gangnam", "Tokyo", "Paris", "Berilin", "Singapore"]
    let words = ["Location", "Special", "Burger", "Country", "Load", "Style", "World", "Peace", "Apple", "Sweet", "Taken", "Wait"]

    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelText.textColor = .white
        labelText.text = "Busan Location"// Do any additional setup after loading the view.
    }
    
    @IBAction func register(_ sender: Any) {
        let firstText = picker.selectedRow(inComponent: 0)
        let secondText = picker.selectedRow(inComponent: 1)
        
        labelText.text = locations[firstText] + " " + words[secondText]
        
        if labelText.text == "Gangnam Style" {
            colorall(index: 22)
            completeO(main: self)

        }
        
    }
    
}


extension PickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return locations.count
        case 1:
            return words.count
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return locations[row]
        case 1:
            return words[row]
        default:
            return "error"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        switch component {
        case 0:
            return NSAttributedString(string: self.locations[row], attributes: [.foregroundColor:UIColor.white])

        case 1:
            return NSAttributedString(string: self.words[row], attributes: [.foregroundColor:UIColor.white])

        default:
            return NSAttributedString(string: self.words[row], attributes: [.foregroundColor:UIColor.white])

        }
    }
}
