//
//  Interactor.swift
//  6-VIPER-achitecture
//
//  Created by Long Nguyễn on 11/05/2021.
//

import UIKit
import Alamofire

class Interactor: InputInteractorProtocol { 
    var presenter: OutputInteractorProtocol?
    
    func getUserList() {
        let url = "https://fast-bayou-64382.herokuapp.com/users"
        
        AF.request(url, method: .get, encoding: URLEncoding.queryString, headers: nil).responseJSON { (response) in
            
            print(response)
            switch response.result {
            case .success:
                guard let data = response.data else {return}
                
                do {
                    let users = try JSONDecoder().decode([User].self, from: data)
                    self.presenter?.userListDidFetch(users: users)
                } catch {
                    print("Fail to pars object")
                }
            case let .failure(error):
                print("2", error)
            }
        }
    }
}

