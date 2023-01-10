//
//  MovieCell.swift
//  Lesson4_M3
//
//  Created by mac on 4/1/23.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var chanelIconImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieViewsAmoutLabel: UILabel!
    
    override func awakeFromNib() {
    super.awakeFromNib()
    
        chanelIconImageView.layer.cornerRadius = 50 / 2
        chanelIconImageView.contentMode = .scaleAspectFill
        
        movieTitleLabel.numberOfLines = 2
        movieTitleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        
        movieViewsAmoutLabel.textColor = .gray
        movieViewsAmoutLabel.font = .systemFont(ofSize: 14)
    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
