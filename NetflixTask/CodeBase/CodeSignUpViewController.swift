//
//  CodeSignUpViewController.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit
import SnapKit
import Toast

class CodeSignUpViewController: BaseViewController {

    var mainView = SignUpView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - configure
    override func configure() {
        mainView.signInButton.addTarget(self, action: #selector(signInButtonClicked), for: .touchUpInside)
        
    }
    
    @objc func signInButtonClicked() {
        print("메인 화면으로 이동")
    }
    
    
    // MARK: - setConstraints
    override func setConstraints() { }
    
}
