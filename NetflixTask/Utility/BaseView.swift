//
//  BaseView.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
        setConstraints()
    }
    
    func configure() { }
    
    func setConstraints() { }

}
