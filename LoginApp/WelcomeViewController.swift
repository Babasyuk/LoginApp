//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Артём on 08.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
    @IBAction func logOutButton(_ sender: UIButton) {
    }
}
