//
//  Router.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import Foundation

typealias EntryPoint = PresenterProtocol & OutputInteractorProtocol

class Router: RouterProtocol {
    static func start(userListRef: ViewController) {
        let presenter: EntryPoint = Presenter()
        
        userListRef.presenter = presenter
        userListRef.presenter?.router = Router()
        userListRef.presenter?.view = userListRef
        userListRef.presenter?.interactor = Interactor()
        userListRef.presenter?.interactor?.presenter = presenter
    }
    
    
}
