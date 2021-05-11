//
//  Router.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit

typealias EntryPoint = PresenterProtocol & OutputInteractorProtocol

class Router: RouterProtocol {
    
    func pushToUserDetail(with user: User, from view: UIViewController) {
        let userDetailViewController = view.storyboard?.instantiateViewController(identifier: "UserDetailViewController") as! UserDetailViewController
        
        DetailRouter.startDetail(detailRef: userDetailViewController, user: user)
        
        view.navigationController?.pushViewController(userDetailViewController, animated: true)
    }
    
    static func start(userListRef: ViewController) {
        let presenter: EntryPoint = Presenter()
        
        userListRef.presenter = presenter
        userListRef.presenter?.router = Router()
        userListRef.presenter?.view = userListRef
        userListRef.presenter?.interactor = Interactor()
        userListRef.presenter?.interactor?.presenter = presenter
    }
    
    
}
