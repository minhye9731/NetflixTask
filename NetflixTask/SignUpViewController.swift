//
//  SIgnUpViewController.swift
//  NetflixHomeTask
//
//  Created by 강민혜 on 7/6/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nickNameTextFIeld: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var recCodeTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var onOffSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        settingSwitch()
    }
    
    // MARK: - UI설정
    func setUI() {
        view.backgroundColor = UIColor.systemBackground
        
        designTextField(emailTextField, keyboardType: .emailAddress, placeholder: "이메일 주소 또는 전화번호", isSecureTextEntry: false)
        designTextField(passwordTextField, keyboardType: .asciiCapable, placeholder: "비밀번호", isSecureTextEntry: true)
        designTextField(nickNameTextFIeld, keyboardType: .default, placeholder: "닉네임", isSecureTextEntry: false)
        designTextField(locationTextField, keyboardType: .default, placeholder: "위치", isSecureTextEntry: false)
        designTextField(recCodeTextField, keyboardType: .numberPad, placeholder: "추천 코드 입력", isSecureTextEntry: false)
        
        signUpButtonSetting()
    }
    
    func designTextField(_ textFieldName: UITextField, keyboardType: UIKeyboardType, placeholder: String, isSecureTextEntry: Bool) {

  
        textFieldName.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        if #available(iOS 12.0, *) { textFieldName.textContentType = .oneTimeCode }
        textFieldName.isSecureTextEntry = isSecureTextEntry
    }

    func signUpButtonSetting() {
        signUpButton.layer.cornerRadius = 8
        signUpButton.clipsToBounds = true
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor( .systemGroupedBackground, for: .normal)
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        signUpButton.backgroundColor = .label
    }

    // MARK: - swith 설정
    func settingSwitch() {
        onOffSwitch.onTintColor = .systemRed
        onOffSwitch.thumbTintColor = .white
    }

    // MARK: - 스위치 버튼 클릭시 동작
    @IBAction func switchButtonTapped(_ sender: UISwitch) {
        // switch가 on이면 return만 해줌 (이유 : siwtch를 off할 때만 alert을 띄울 예정)
        if self.onOffSwitch.isOn { return }
        // switch를 ON으로 유지해놓음
        self.onOffSwitch.setOn(true, animated: true)
        
        let alert = UIAlertController(title: "현재 해당 기능을 끄시겠습니까?", message: "블라블라", preferredStyle: .alert)
        
        // alert에서의 cancel 클릭시
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("해당 기능 끄기를 취소하셨습니다. \n 현재 기능을 그대로 유지합니다.")}))
        
        // alert에서의 ok 클릭시
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            // 상태를 off로 변경함
            self.onOffSwitch.setOn(false, animated: true)}))
        self.present(alert, animated: true, completion: nil)
    }

    // MARK: - 빈공간 누르면 키보드 내려가기
    @IBAction func TapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    // MARK: - 회원가입 버튼 클릭시 액션
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        if emailTextField.text == "" || passwordTextField.text == "" {
            self.presentAlert(title: "이메일과 비밀번호를 모두 입력해주세요.")
            return
        } else if passwordTextField.text!.count < 6 {
            self.presentAlert(title: "비밀번호는 6자리 이상으로 설정해주세요.")
            return
        }
        self.signupAlert(title: "<안내>", message: "회원가입이 성공적으로 완료되었습니다 :)", preferredStyle: .alert) {_ in
            self.view.endEditing(true)
            self.moveToMain()
        }
    }
    
    // 화면이동
    func moveToMain() {
        let newVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        newVC.modalTransitionStyle = .crossDissolve
        newVC.modalPresentationStyle = .fullScreen
        self.present(newVC, animated: true, completion: nil)
    }
}
