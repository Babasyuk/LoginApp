//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Артём on 08.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
    
    @IBAction func logOutButton(_ sender: UIButton) {
    }
}
