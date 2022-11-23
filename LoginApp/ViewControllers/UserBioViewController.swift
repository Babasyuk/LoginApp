//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Артём on 22.11.2022.
//

import UIKit

class UserBioViewController: UIViewController {
    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(user.person.fullName) Bio"
        userBioTextView.text = user.person.bio
        
    }
    
}
