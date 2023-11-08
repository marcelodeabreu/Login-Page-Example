//  Created by Marcelo de Abreu on 01/11/23.

import UIKit

class LoginVC: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        self.screen = LoginScreen()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.delegate(delegate: self)
        self.screen?.configureTextFieldDelegate(delegate: self)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginVC: LoginScreenProtocol {
    func actionLoginButton() {
        print("xxx")
    }
    
    func actionRegisterButton() {
        print("yyy")
    }
    
    
}

extension LoginVC: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    
}

