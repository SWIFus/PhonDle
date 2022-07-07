//
//  utilities.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/09.
//

import UIKit

func complete(main: UIViewController) {
    guard let nextVC = main.storyboard?.instantiateViewController(withIdentifier: "CompleteViewController") as? CompleteViewController else {return}
    nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
    main.navigationController?.pushViewController(nextVC, animated: true)
}

func completeG(main: UIViewController) {
    guard let nextVC = main.storyboard?.instantiateViewController(withIdentifier: "GreenCompleteViewController") as? GreenCompleteViewController else {return}
    nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
    main.navigationController?.pushViewController(nextVC, animated: true)
}

func completeO(main: UIViewController) {
    guard let nextVC = main.storyboard?.instantiateViewController(withIdentifier: "OrangeCompleteViewController") as? OrangeCompleteViewController else {return}
    nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
    main.navigationController?.pushViewController(nextVC, animated: true)
}

func colorall(index: Int) {
    var list = UserDefaults.standard.array(forKey: clearlistKey)!
    list[index] = 1
    UserDefaults.standard.set(list, forKey: clearlistKey)
    print(index)
    print("cleared")
}

func completeB(main: UIViewController) {
    guard let nextVC = main.storyboard?.instantiateViewController(withIdentifier: "BlueCompleteViewController") as? BlueCompleteViewController else {return}
    nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
    main.navigationController?.pushViewController(nextVC, animated: true)
}
