//
//  DetailPresenter.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit

class DetailPresenter: DetailPresenterProtocol {
    var router: DetailRouterProtocol?
    var view: DetailViewProtocol?
    
    var user: User!
    
    func viewDidLoad() {
        view?.showUserDetail(with: user)
    }
    
}
