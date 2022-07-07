//
//  LongTouchCollectionViewCell.swift
//  PhoneDle
//
//  Created by Jin younkyum on 2022/06/07.
//

import UIKit

class LongTouchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var longTouchView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        longTouchView.clipsToBounds = true
        longTouchView.layer.cornerRadius = longTouchView.bounds.width / 2
    }
}
