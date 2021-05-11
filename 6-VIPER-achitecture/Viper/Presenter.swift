//
//  Presenter.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import Foundation

class Presenter: PresenterProtocol {
    var view: ViewProtocol?
    
    var interactor: InputInteractorProtocol?
    
    var router: RouterProtocol?
    
    func viewDidLoad() {
        self.loadUserList()
    }
    
    func loadUserList() {
        interactor?.getUserList()
    }
}

extension Presenter: OutputInteractorProtocol {
    func userListDidFetch(users: [User]) {
        view?.showUsers(with: users)
    }
}
