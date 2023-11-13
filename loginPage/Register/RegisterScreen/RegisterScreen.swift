//
//  RegisterScreen.swift
//  loginPage
//
//  Created by Marcelo de Abreu on 10/11/23.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "arrowshape.backward"), for: .normal)
        
        return button
    }()
    
    lazy var logoAppImageView: UIImageView = {
       
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "loginPageAppLogo")
        image.contentMode = .scaleAspectFit
        
        return image
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
                string: "choose password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
            )
            ptf.textColor = .white
            ptf.clipsToBounds = true
            ptf.layer.cornerRadius = 12
            ptf.layer.borderWidth = 1.0
            ptf.layer.borderColor = UIColor.white.cgColor
            
            return ptf
        }()
    
    lazy var reEnterPasswordTextField: UITextField = {
            
            let ptf = UITextField()
            ptf.translatesAutoresizingMaskIntoConstraints = false
            ptf.autocorrectionType = .no
            ptf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 180/255, alpha: 1.0)
            ptf.borderStyle = .roundedRect
            ptf.keyboardType = .default
            ptf.isSecureTextEntry = true
            ptf.attributedPlaceholder = NSAttributedString(
                string: "re-enter password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
            )
            ptf.textColor = .white
            ptf.clipsToBounds = true
            ptf.layer.cornerRadius = 12
            ptf.layer.borderWidth = 1.0
            ptf.layer.borderColor = UIColor.white.cgColor
            
            return ptf
        }()
    
    lazy var createAccountButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 180/255, alpha: 1.0)
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureBackground()
        self.configureSuperView()
        self.setUpConstraints()
    }
    
    private func configureSuperView() {
        self.addSubview(self.backButton)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.reEnterPasswordTextField)
        self.addSubview(self.createAccountButton)
    }
    
    private func configureBackground() {
        self.backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error.")
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.logoAppImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            self.logoAppImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.backButton.topAnchor.constraint(equalTo: self.logoAppImageView.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            self.emailTextField.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 80),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            
            self.reEnterPasswordTextField.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 20),
            self.reEnterPasswordTextField.leadingAnchor.constraint(equalTo: self.passwordTextField.leadingAnchor),
            self.reEnterPasswordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            
            self.createAccountButton.topAnchor.constraint(equalTo: self.reEnterPasswordTextField.bottomAnchor, constant: 60),
            self.createAccountButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 65),
            self.createAccountButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -65)
        
        
        
        
        ])
        
    }
    
}
