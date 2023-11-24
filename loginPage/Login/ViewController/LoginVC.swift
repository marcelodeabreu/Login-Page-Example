//  Created by Marcelo de Abreu on 01/11/23.

import UIKit
<<<<<<< HEAD

class LoginVC: UIViewController {
    
=======
import Firebase

class LoginVC: UIViewController {
    
    var auth: Auth?
>>>>>>> cb80e59 (Adding podfiles and snapkit)
    var screen: LoginScreen?
    
    override func loadView() {
        self.screen = LoginScreen()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.delegate(delegate: self)
        self.screen?.configureTextFieldDelegate(delegate: self)
<<<<<<< HEAD
=======
        self.auth = Auth.auth()
>>>>>>> cb80e59 (Adding podfiles and snapkit)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginVC: LoginScreenProtocol {
    func actionLoginButton() {
<<<<<<< HEAD
        print("xxx")
    }
    
    func actionRegisterButton() {
=======
        
        guard let login = self.screen else { return }
        
        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { (user, error) in
            
            if error != nil {
                print("could not verify user.")
            } else {
             
                if user == nil {
                    print("error. try again later.")
                } else {
                    print("user logged in.")
                }
                
            }
        })
        
        
    }
    
    func actionRegisterButton() {
        print("Register OK")
>>>>>>> cb80e59 (Adding podfiles and snapkit)
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

extension LoginVC: UITextFieldDelegate {
<<<<<<< HEAD

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
=======
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        self.screen?.validateTextFields()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
>>>>>>> cb80e59 (Adding podfiles and snapkit)
    }
    
    
}

