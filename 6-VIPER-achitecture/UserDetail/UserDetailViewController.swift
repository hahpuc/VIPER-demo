//
//  UserDetailViewController.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit

class UserDetailViewController: UIViewController, DetailViewProtocol {
    @IBOutlet weak var nameLabel: UILabel!
    
    var presenter: DetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
    }
    
    func showUserDetail(with user: User) {
        nameLabel.text = user.first_name + " " + user.last_name
    }
    
}
