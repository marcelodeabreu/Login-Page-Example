//  Created by Marcelo de Abreu on 02/11/23.

import UIKit

class LoginScreen: UIView {
    
    // BACKGROUND IMAGE
    
    lazy var subImageView: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "loginPageAppBackground")
        return image
    }()
    
    // LABEL 1
    
    lazy var loginLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Login Page Example App"
        
        return label
    }()
    
    // LOGINT TEXT FIELD
    
    lazy var loginTextField: UITextField = {
        
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.attributedPlaceholder = NSAttributedString(
            string: "Login",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]
        )
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        return tf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.subImageView)
        self.addSubview(self.loginLabel)
        self.addSubview(self.loginTextField)
        self.configConstraints()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
// CONSTRAINS CONFIGURATION
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            // BACKGROUND IMAGE
            
            self.subImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.subImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.subImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            // LABEL 1
            
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 200),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.loginTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 400),
            self.loginTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.loginTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.loginTextField.heightAnchor.constraint(equalToConstant: 39),
            
        ])
    }
}
