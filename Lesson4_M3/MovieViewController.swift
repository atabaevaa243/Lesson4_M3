//
//  MovieViewController.swift
//  Lesson4_M3
//
//  Created by mac on 10/1/23.
//

import UIKit

class MovieViewController: UIViewController {

    var img = ""
    
    @IBOutlet weak var movieImg: UIImageView!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        movieImg.image = UIImage(named: img)
        
        // Do any additional setup after loading the view.
    }
    

}
