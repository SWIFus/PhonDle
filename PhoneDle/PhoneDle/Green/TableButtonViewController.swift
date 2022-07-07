//
//  TableButtonViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class TableButtonViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tableViewItems = ["apple", "bowling", "carrot", "dodgeball", "earth", "fishing", "hug", "iPhone", "judge", "kids", "love", "monkey", "ninja", "orange", "phonDLE", "queue", "reusable", "sad", "tiger", "utility", "volume", "wolf", "yellow", "zest"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .black
        tableView.tintColor = .white
        self.view.backgroundColor = .black
        self.navigationController?.navigationBar.backgroundColor = .black

    }
    

}

extension TableButtonViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        cell.textLabel?.text = tableViewItems[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .black
        return cell
    }
}

extension TableButtonViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(tableViewItems[indexPath.row])
        if tableViewItems[indexPath.row] == "phonDLE" {
            colorall(index: 67)
            completeG(main: self)
        }
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
            UIView.animate(withDuration: 0.5) { [weak self] in
                guard velocity.y != 0 else { return }
                if velocity.y < 0 {
                    let height = self?.tabBarController?.tabBar.frame.height ?? 0.0
                    self?.tabBarController?.tabBar.alpha = 1.0
                    self?.tabBarController?.tabBar.frame.origin = CGPoint(x: 0, y: UIScreen.main.bounds.maxY - height)
                } else {
                self?.tabBarController?.tabBar.alpha = 0.0
                    self?.tabBarController?.tabBar.frame.origin = CGPoint(x: 0, y: UIScreen.main.bounds.maxY)
                }
            }
        }
}
