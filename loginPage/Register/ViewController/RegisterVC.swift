//
//  RegisterVC.swift
//  loginPage
//
//  Created by Marcelo de Abreu on 10/11/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
