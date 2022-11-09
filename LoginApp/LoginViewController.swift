//
//  ViewController.swift
//  LoginApp
//
//  Created by Артём on 08.11.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var user = "User"
    private var password = "Password"
    
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    //MARK: - IBAction
    @IBAction func logInPressed() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter coorect login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", message: "Your User is \(user) 😉")
        : showAlert(title: "Ooops!", message: "Your Password is \(password) 😉")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    
    
    // MARK: - UIAlertController
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}


