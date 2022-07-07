//
//  DatePickerViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class DatePickerViewController: UIViewController {

    private let datePicker = UIDatePicker()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    private func configureUI() {
        setAttributes()
        setConstraints()
    }
    
    private func setAttributes() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .dateAndTime
        datePicker.locale = Locale(identifier: "ko-KR")
        datePicker.timeZone = .autoupdatingCurrent
        datePicker.addTarget(self, action: #selector(handleDatePicker(_:)), for: .valueChanged)
        datePicker.date = giveRandomDate()!
        datePicker.setValue(UIColor.white, forKey: "textColor")
        datePicker.tintColor = UIColor.white
    }
    
    private func setConstraints() {
        view.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    //Younkyum
    func getThisYear() -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "YYYY"
        var now = formatter.string(from: Date())
        let temp = Int(now)! - 11
        now = String(temp)
        return now
    }
    
    func getRandomDate() -> String {
        let month = String(Int.random(in: 1..<13))
        let date = String(Int.random(in:1..<20))
        let hour = String(Int.random(in: 1..<13))
        let minute = String(Int.random(in: 1..<59))
        let gettedDate = month + " " + date + " " + hour + " " + minute
        return gettedDate
    }
    
    func giveRandomDate() -> Date? {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "YYYY MM dd hh mm"
        let gettedDate = getThisYear() + " " + getRandomDate()
        return formatter.date(from: gettedDate)
    }
    
    @objc private func handleDatePicker(_ sender: UIDatePicker) {
        let pickedDateTime = sender.date
        let nowDateTime = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "MM dd HH:mm"
        let pickedString = dateFormatter.string(from: pickedDateTime)
        let nowString = dateFormatter.string(from: nowDateTime)
        print(pickedString)
        print(nowString)
        
        if pickedString == nowString {
            sender.setValue(UIColor.green, forKey: "textColor")
            colorall(index: 52)
            completeG(main: self)
        }
        else {
            sender.setValue(UIColor.white, forKey: "textColor")
        }
    }



}
