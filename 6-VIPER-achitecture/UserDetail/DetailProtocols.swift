//
//  DetailProtocols.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit

protocol DetailViewProtocol {
    // Present -> View
    func showUserDetail(with user: User)
}

protocol DetailPresenterProtocol {
    // View -> Present
    var router: DetailRouterProtocol? {get set}
    var view: DetailViewProtocol? {get set}
    
    func viewDidLoad()
}

protocol DetailRouterProtocol {
    // Present -> Router
    static func startDetail(detailRef: UserDetailViewController, user: User)
}
