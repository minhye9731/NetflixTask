//
//  SignInTextField.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit

class SignInTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.backgroundColor = .systemGray
        self.layer.cornerRadius = 8
        self.textAlignment = .center
        self.font = .systemFont(ofSize: 15)
        self.autocorrectionType = .no
        
    }
}
