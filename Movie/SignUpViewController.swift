//
//  SignUpViewController.swift
//  Movie
//
//  Created by yongseok lee on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nickNameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var codeTexField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var furtherInfoSwitch: UISwitch!
    @IBOutlet weak var noticeLabel: UILabel!
    
    override func viewDidLoad() { //reFactoring 필요
        super.viewDidLoad()
        view.backgroundColor = .black
        
        textFieldSetting(emailTextField, placeHolder: "이메일 주소 또는 전화번호", keyboardType: .emailAddress, borderStyle: .none, isSecure: false)
        textFieldSetting(passwordTextField, placeHolder: "비밀번호", keyboardType: .default, borderStyle: .bezel, isSecure: true)
        textFieldSetting(nickNameTextField, placeHolder: "닉네임", keyboardType: .default, borderStyle: .roundedRect)
        textFieldSetting(locationTextField, placeHolder: "위치", keyboardType: .asciiCapable, borderStyle: .line, isSecure: false)
        textFieldSetting(codeTexField, placeHolder: "추천 코드 입력", keyboardType: .numberPad, borderStyle: .roundedRect )
        
        buttonSetting(button: signUpButton, title: "회원가입", titleColor: .black)
        
        furtherInfoSwitch.setOn(true, animated: true)
        switchColorSetting(switchName: furtherInfoSwitch)
    }
    
    func textFieldSetting(_ textField: UITextField, placeHolder: String, keyboardType: UIKeyboardType, borderStyle: UITextField.BorderStyle, isSecure: Bool = false) {
        
        textField.placeholder = placeHolder
        textField.borderStyle = borderStyle
        textField.keyboardType = keyboardType
        textField.textAlignment =  .center
        textField.backgroundColor = .systemGray
        textField.textColor = .white
        textField.isSecureTextEntry = isSecure
        
    }
    
    func buttonSetting(button: UIButton, title: String, titleColor: UIColor) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.gray, for: .highlighted)
    }
    
    func switchColorSetting(switchName: UISwitch ) {
        switchName.onTintColor = .systemRed
        switchName.thumbTintColor = .systemGray
    }

    
    @IBAction func tapGesturetapped(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {  //optional 처리할것
        view.endEditing(true)
        
        guard emailTextField.text != nil,
              let passwordText = passwordTextField.text,
              passwordText.count > 6 ,
              let codeText = codeTexField.text,
              Int(codeText) != nil
        else { return noticeLabel.text = " 입력 똑바로 하세요" }
           
        noticeLabel.text = " 잘 입력하셨네요 "
    }
    
   
}
