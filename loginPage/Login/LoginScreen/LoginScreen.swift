//  Created by Marcelo de Abreu on 02/11/23.

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionRegisterButton()
}

class LoginScreen: UIView {
    
   private weak var delegate: LoginScreenProtocol?
    
    func delegate(delegate:LoginScreenProtocol?){
        self.delegate = delegate
    }
    
    lazy var logoAppImageView: UIImageView = {
       
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "loginPageAppLogo")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 52/255, green: 52/255, blue: 180/255, alpha: 1.0)
        label.font = .boldSystemFont(ofSize: 25)
        label.text = "welcome:"
        
        return label
    }()
    
    lazy var emailTextField: UITextField = {
            
            let etf = UITextField()
            etf.translatesAutoresizingMaskIntoConstraints = false
            etf.autocorrectionType = .no
            etf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 180/255, alpha: 1.0)
            etf.borderStyle = .roundedRect
            etf.keyboardType = .emailAddress
            etf.attributedPlaceholder = NSAttributedString(
                string: "user@example.com",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
            )
            etf.textColor = .white
            etf.clipsToBounds = true
            etf.layer.cornerRadius = 12
            etf.layer.borderWidth = 1.0
            etf.layer.borderColor = UIColor.white.cgColor
            
            return etf
        }()
    
    lazy var passwordTextField: UITextField = {
            
            let ptf = UITextField()
            ptf.translatesAutoresizingMaskIntoConstraints = false
            ptf.autocorrectionType = .no
            ptf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 180/255, alpha: 1.0)
            ptf.borderStyle = .roundedRect
            ptf.keyboardType = .default
            ptf.isSecureTextEntry = true
            ptf.attributedPlaceholder = NSAttributedString(
                string: "********",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
            )
            ptf.textColor = .white
            ptf.clipsToBounds = true
            ptf.layer.cornerRadius = 12
            ptf.layer.borderWidth = 1.0
            ptf.layer.borderColor = UIColor.white.cgColor
            
            return ptf
        }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 180/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedLoginButton), for: .touchUpInside)
        
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create account", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(self.tappedRegisterButton), for: .touchUpInside)

        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureBackground()
        self.configureSuperView()
<<<<<<< HEAD
        self.configConstraints()
=======
        
        // XXXXXXXXXXXXXXXXX
        
        self.configureLogoAppImageViewConstraint()
        self.configureLoginLabelConstraint()
        self.configureEmailTextFieldConstraint()
        self.configurePasswordTextFieldConstraint()
        self.configureLoginButtonConstraint()
        self.configureRegisterButtonConstraint()
        
        // XXXXXXXXXXXXXXXXX
        
        self.configConstraints()
        self.configureButtonEnable(false)
>>>>>>> cb80e59 (Adding podfiles and snapkit)
    }
    
    private func configureBackground(){
        self.backgroundColor = .systemBackground
    }
    
    private func configureSuperView() {
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.loginLabel)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.loginButton)
        self.addSubview(self.registerButton)
    }
    
    public func configureTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }
    
    @objc private func tappedLoginButton(){
        self.delegate?.actionLoginButton()
    }
    
    @objc private func tappedRegisterButton(){
        self.delegate?.actionRegisterButton()
    }
    
<<<<<<< HEAD
=======
    public func validateTextFields() {
        
        let email: String = self.emailTextField.text ?? ""
        let password: String = self.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            self.configureButtonEnable(true)
        } else {
            self.configureButtonEnable(false)
        }
        
    }
    
    private func configureButtonEnable (_ enable: Bool) {
        
        if enable {
            self.loginButton.setTitleColor(.white, for: .normal)
            self.loginButton.isEnabled = true
        } else {
            self.loginButton.setTitleColor(.lightGray, for: .normal)
            self.loginButton.isEnabled = false
        }
    }
    
    public func getEmail()-> String {
        return self.emailTextField.text ?? ""
    }
    
    public func getPassword()-> String {
        return self.passwordTextField.text ?? ""
    }
    
>>>>>>> cb80e59 (Adding podfiles and snapkit)
    required init?(coder: NSCoder) {
        fatalError("Error.")
    }
    
// CONSTRAINS CONFIGURATION
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
<<<<<<< HEAD
            self.logoAppImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            self.logoAppImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
            self.loginLabel.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 80),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.emailTextField.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 80),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            
            
            self.loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 60),
            self.loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 65),
            self.loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -65),
            
            self.registerButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 60),
            self.registerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 65),
            self.registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -65)
=======
//            self.logoAppImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
//            self.logoAppImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
//            self.loginLabel.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 80),
//            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
//            self.emailTextField.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 80),
//            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
//            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
//            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
//            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
//            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            
            
//            self.loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 60),
//            self.loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 65),
//            self.loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -65),
            
//            self.registerButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 60),
//            self.registerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 65),
//            self.registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -65)
>>>>>>> cb80e59 (Adding podfiles and snapkit)
            
            
        ])
    }
<<<<<<< HEAD
=======
    
    func configureLogoAppImageViewConstraint(){
        self.logoAppImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(50)
            make.centerX.equalToSuperview()
        }
    }
    
    func configureLoginLabelConstraint() {
        self.loginLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.logoAppImageView.snp.bottom).offset(80)
            make.centerX.equalToSuperview()
        }
    }
    
    func configureEmailTextFieldConstraint() {
        self.emailTextField.snp.makeConstraints { (make) in
            make.top.equalTo(self.loginLabel.snp.bottom).offset(80)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
        }
    }
    
    func configurePasswordTextFieldConstraint() {
        self.passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(self.emailTextField.snp.bottom).offset(20)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
        }
    }
    
    func configureLoginButtonConstraint() {
        self.loginButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(60)
            make.width.equalTo(200)
            make.centerX.equalToSuperview()
        }
    }
    
    func configureRegisterButtonConstraint() {
        self.registerButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.loginButton.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
        }
    }
    
>>>>>>> cb80e59 (Adding podfiles and snapkit)
}
