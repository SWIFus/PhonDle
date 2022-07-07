//
//  HomeViewController.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/06.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - level Properties
    let isClearImage = [UIImage(systemName: "square"), UIImage(systemName: "square.fill")]
    let colors = [UIColor.orange,
                  UIColor(displayP3Red: 173/255, green: 79/255, blue: 224/255, alpha: 1),
                  UIColor.blue,
                  UIColor.green]
    let green = [47, 51, 52, 53, 60, 67]
    let orange = [8, 15, 16, 22, 23, 24, 30]
    let purple = [18, 25, 26, 31, 32, 33, 38, 39]
    let blue = [36, 37, 43, 44]
    var clearList = UserDefaults.standard.array(forKey: clearlistKey)!

    
    // MARK: - IBOutlets
    @IBOutlet weak var levelCollection: UICollectionView!
    
    
    // MARK: - Extra Properties
    let sectionInsets = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
    
    // MARK: - View Cycles
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
        clearList = UserDefaults.standard.array(forKey: clearlistKey)!
        levelCollection.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelCollection.register(UINib(nibName: "LevelCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "LevelCollectionViewCell")
        setupFlowLayout()
    }
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumLineSpacing = 3
        
        let halfWidth = UIScreen.main.bounds.width / 7
        flowLayout.itemSize = CGSize(width: halfWidth * 0.8, height: halfWidth * 0.8)
        self.levelCollection.collectionViewLayout = flowLayout
    }
    
    @IBAction func pushClearButton(_ sender: Any) {
        UserDefaults.standard.set(Array(repeating: 0, count: 77), forKey: clearlistKey)
        clearList = UserDefaults.standard.array(forKey: clearlistKey)!
        levelCollection.reloadData()
    }
    
    

}


// MARK: - Extensions
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 77
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LevelCollectionViewCell", for: indexPath) as? LevelCollectionViewCell else { return UICollectionViewCell() }
        
        if clearList[indexPath.row] as! Int == 0 {
            cell.squareImage.image = isClearImage[0]
        } else {
            cell.squareImage.image = isClearImage[1]
        }
            

        
        if green.contains(indexPath.row) {
            cell.squareImage.tintColor = colors[3]
            cell.squareImage.alpha = 1
        } else if orange.contains(indexPath.row) {
            cell.squareImage.tintColor = colors[0]
            cell.squareImage.alpha = 1
        } else if purple.contains(indexPath.row) {
            cell.squareImage.tintColor = colors[1]
            cell.squareImage.alpha = 1
        } else if blue.contains(indexPath.row) {
            cell.squareImage.tintColor = colors[2]
            cell.squareImage.alpha = 1
        } else {
            cell.squareImage.alpha = 0
        }
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        // MARK: - Orange [8, 15, 16, 22, 23, 24, 30]
        case 8:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "RouletteViewController") as? RouletteViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 15:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "RGBSliderViewController") as? RGBSliderViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 16:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ButtonViewController") as? ButtonViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 22:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "PickerViewController") as? PickerViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 23:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "HelloWorldViewController") as? HelloWorldViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 24:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "StackviewViewController") as? StackviewViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 30:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "TextButtonViewController") as? TextButtonViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        // MARK: - Green [45, 46, 47, 51, 52, 53, 60, 67]
            /*
        case 45:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DragViewController") as? DragViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
             
        case 46:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NoTapViewController") as? NoTapViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
         */
        case 47:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "OrderTouchViewController") as? OrderTouchViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 51:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "AlertViewController") as? AlertViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 52:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DatePickerViewController") as? DatePickerViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 53:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "PinchViewController") as? PinchViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 60:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SwipeViewController") as? SwipeViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 67:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "TableButtonViewController") as? TableButtonViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
            
            
        // MARK: - Purple [18, 25, 26, 31, 32, 33, 38, 39]
        case 18:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DetectChargeViewController") as? DetectChargeViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 25:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "EdgeSwipeViewController") as? EdgeSwipeViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 26:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "RandomTextViewController") as? RandomTextViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 31:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "RandomTimeTouchViewController") as? RandomTimeTouchViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 32:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ScreenShotDetectViewController") as? ScreenShotDetectViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 33:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ScreenLotationViewController") as? ScreenLotationViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 38:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ShakeYourPhoneViewController") as? ShakeYourPhoneViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 39:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "TurnOnWiFiViewController") as? TurnOnWiFiViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        // MARK: - blue = [36, 37, 43, 44]
        case 36:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DayChangeViewController") as? DayChangeViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 37:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "TimeTouchViewController") as? TimeTouchViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 43:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Escape1ViewController") as? Escape1ViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 44:
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ZoominViewController") as? ZoominViewController else {return}
            nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        // MARK: - Default
        default:
            print("There is no levels")
        }
    }
}
