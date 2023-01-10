//
//  ShortsCell.swift
//  Lesson4_M3
//
//  Created by mac on 10/1/23.
//

import Foundation
import UIKit

class ShortsCell: UICollectionViewCell {
    
    @IBOutlet weak var shortsImageView: UIImageView!
    
    @IBOutlet weak var shortsTitleLabel: UILabel!
    
    @IBOutlet weak var shortsAmoutViewsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shortsImageView.contentMode = .scaleAspectFill
        
        shortsTitleLabel.font = .systemFont(ofSize: 17, weight: .bold)
        shortsTitleLabel.textColor = .white
        shortsTitleLabel.numberOfLines = 2
        
        shortsAmoutViewsLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        shortsAmoutViewsLabel.textColor = .white
    }
}
