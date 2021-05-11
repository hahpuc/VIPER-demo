//
//  Protocols.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit

protocol ViewProtocol {
    // presenter -> view
    
    func showUsers(with users: [User])
}

protocol PresenterProtocol {
    // View -> Presenter
    
    var view: ViewProtocol? {get set}
    var interactor: InputInteractorProtocol? {get set}
    var router: RouterProtocol? {get set}
    
    func viewDidLoad()
    func showUserSelection(with user: User, from view: UIViewController)
}

protocol InputInteractorProtocol {
    // presenter -> interactor
    
    var presenter: OutputInteractorProtocol? {get set}
    
    func getUserList()
}

protocol OutputInteractorProtocol {
    // interactor -> presenter
    
    func userListDidFetch(users: [User])
}

protocol RouterProtocol {
    // presenter -> router
    func pushToUserDetail(with user: User, from view: UIViewController)
    static func start(userListRef: ViewController)
}

