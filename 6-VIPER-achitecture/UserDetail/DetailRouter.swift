//
//  DetailRouter.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit


class DetailRouter: DetailRouterProtocol {
    static func startDetail(detailRef: UserDetailViewController, user: User) {
        let presenter = DetailPresenter()
        
        presenter.user = user
        detailRef.presenter = presenter
        detailRef.presenter?.view = detailRef
        detailRef.presenter?.router = DetailRouter()
    }
}
