//
//  View.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 10/05/2021.
//

import UIKit

class ViewController: UIViewController, ViewProtocol {
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: PresenterProtocol?
    var users: [User] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        Router.start(userListRef: self)
        presenter?.viewDidLoad()
    }
    
    func showUsers(with users: [User]) {
        self.users = users
        tableView.reloadData()
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showUserSelection(with: users[indexPath.row], from: self)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
        cell.textLabel?.text = users[indexPath.row].first_name + " " + users[indexPath.row].last_name
        
        return cell
    }
}
