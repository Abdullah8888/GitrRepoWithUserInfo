//
//  UserRepository.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

protocol UserRepositoryDelegate {
    func userRepositories()
    func userRepositoryDetails(by id: String)
}

class UserRepository: UserRepositoryDelegate {

    let networkService: NetworkServiceDelegate
    let realmService: RealmServiceDelegate
    
    init(networkService: NetworkServiceDelegate, realmService: RealmServiceDelegate) {
        self.networkService = networkService
        self.realmService = realmService
    }
    
    func userRepositories() {
        
    }
    
    func userRepositoryDetails(by id: String) {
        
    }
}
