//
//  SignUpView.swift
//  NetflixTask
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit

class SignUpView: BaseView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "JACKFLIX"
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        return label
    }()
    
    let emailTextField: SignInTextField = {
        let textfield = SignInTextField()
        textfield.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textfield.keyboardType = .emailAddress
        return textfield
    }()
    
    let passwordTextField: SignInTextField = {
        let textfield = SignInTextField()
        textfield.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textfield.keyboardType = .asciiCapable
        
        if #available(iOS 12.0, *) { textfield.textContentType = .oneTimeCode }
        textfield.isSecureTextEntry = true
        
        return textfield
    }()
    
    let nicknameTextField: SignInTextField = {
        let textfield = SignInTextField()
        textfield.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textfield.keyboardType = .default
        return textfield
    }()
    
    let locationTextField: SignInTextField = {
        let textfield = SignInTextField()
        textfield.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textfield.keyboardType = .default
        return textfield
    }()
    
    let codeTextField: SignInTextField = {
        let textfield = SignInTextField()
        textfield.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textfield.keyboardType = .numberPad
        return textfield
    }()
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .white
//        button.titleLabel?.textColor = .black
        button.tintColor = .black
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    let extraInfoButton: UIButton = {
        let button = UIButton()
        button.setTitle("추가 정보 입력", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .clear
        return button
    }()
    
    let onOffSwitch: UISwitch = {
        let onoffswitch = UISwitch()
        onoffswitch.onTintColor = .systemRed
        onoffswitch.thumbTintColor = .white
        return onoffswitch
    }()
    
    // MARK: - 초기화
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 객체 올리기
    override func configure() {
        [titleLabel, emailTextField, passwordTextField, nicknameTextField, locationTextField, codeTextField, signInButton, extraInfoButton, onOffSwitch].forEach {
            self.addSubview($0)
        }
    }
    
    // MARK: - 레이아웃 잡기
    override func setConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(self.safeAreaLayoutGuide).offset(60)
            make.leadingMargin.trailingMargin.equalTo(50)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(titleLabel).offset(125)
            make.leadingMargin.trailingMargin.equalTo(26)
            make.height.equalTo(42)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(emailTextField.snp.bottom).offset(14)
            make.leadingMargin.trailingMargin.equalTo(26)
            make.height.equalTo(42)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(passwordTextField.snp.bottom).offset(14)
            make.leadingMargin.trailingMargin.equalTo(26)
            make.height.equalTo(42)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(nicknameTextField.snp.bottom).offset(14)
            make.leadingMargin.trailingMargin.equalTo(26)
            make.height.equalTo(42)
        }
        
        codeTextField.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(locationTextField.snp.bottom).offset(14)
            make.leadingMargin.trailingMargin.equalTo(26)
            make.height.equalTo(42)
        }
        
        signInButton.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(codeTextField.snp.bottom).offset(14)
            make.leadingMargin.trailingMargin.equalTo(26)
            make.height.equalTo(58)
        }
        
        extraInfoButton.snp.makeConstraints { make in
            make.top.equalTo(signInButton.snp.bottom).offset(14)
            make.leadingMargin.equalTo(26)
            make.width.equalTo(110)
        }
        
        onOffSwitch.snp.makeConstraints { make in
            make.top.equalTo(signInButton.snp.bottom).offset(14)
            make.trailingMargin.equalTo(-26)
        }
        
        
    }
    
}
