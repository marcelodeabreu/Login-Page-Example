//
//  RegisterVC.swift
//  loginPage
//
//  Created by Marcelo de Abreu on 10/11/23.
//

import UIKit
<<<<<<< HEAD
=======
import Firebase
>>>>>>> cb80e59 (Adding podfiles and snapkit)

class RegisterVC: UIViewController {
    
    var registerScreen: RegisterScreen?
    
<<<<<<< HEAD
=======
    var auth: Auth?
    
>>>>>>> cb80e59 (Adding podfiles and snapkit)
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
<<<<<<< HEAD

    override func viewDidLoad() {
        super.viewDidLoad()
    }

=======
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configureTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
        self.auth = Auth.auth()
    }
        
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validateTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension RegisterVC: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
        guard let register = self.registerScreen else { return }
        
        self.auth?.createUser(withEmail: register.getEmail(), password: register.getPassword(), completion: { (result, error) in
            
            if error != nil {
                print("error")
            } else {
                print("user registered.")
            }
            
        })
        
    }
    
    
>>>>>>> cb80e59 (Adding podfiles and snapkit)
}
