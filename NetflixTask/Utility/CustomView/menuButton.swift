//
//  menuButton.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit

class menuButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        menuButton()
    }
    
    func menuButton() {
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
    }

}
