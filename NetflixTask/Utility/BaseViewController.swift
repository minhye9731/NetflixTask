//
//  BaseViewController.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit
import Toast

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setConstraints()
    }
    
    func configure() { }
    
    func setConstraints() { }
    
    func showToastMsg(_ msg: String) {
        self.view.makeToast(msg, position: .center)
    }
    

}
