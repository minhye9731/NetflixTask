//
//  CirclePosterImageView.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit

class CirclePosterImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        setupPosterImageView()
    }
    
    func setupPosterImageView() {
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.cornerRadius = 50
//        self.masksToBounds = true
    }
    
    
    

}
