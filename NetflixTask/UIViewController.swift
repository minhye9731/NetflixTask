//
//  File.swift
//  NetflixTask
//
//  Created by 강민혜 on 7/7/22.
//

import UIKit

extension UIViewController {
    
    // MARK: 취소와 확인이 뜨는 UIAlertController
    func presentAlert(title: String, message: String? = nil,
                      isCancelActionIncluded: Bool = false,
                      preferredStyle style: UIAlertController.Style = .alert,
                      handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let actionDone = UIAlertAction(title: "확인", style: .default, handler: handler)
        alert.addAction(actionDone)
        if isCancelActionIncluded {
            let actionCancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
            alert.addAction(actionCancel)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - 확인만 뜨는 UIAlertController
    func signupAlert(title: String, message: String? = nil, preferredStyle style: UIAlertController.Style = .alert,
                     handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let ok = UIAlertAction(title: "확인", style: .default, handler: handler)
        
        alert.addAction(ok)
        self.present(alert, animated: true)
    }

}
