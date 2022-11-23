//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Артём on 22.11.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var departamentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!

    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        name.text = user.person.name
        surname.text = user.person.surname
        jobLabel.text = user.person.job.title
        departamentLabel.text = user.person.job.department.rawValue
        jobTitleLabel.text = user.person.job.jobTitle.rawValue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? UserBioViewController else { return }
        imageVC.user = user
    }
}
