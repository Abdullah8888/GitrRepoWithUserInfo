//
//  GitRepository.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation
protocol GitRepositoryDelegate {
    
    func getRepositories()
}

class GitRepository: GitRepositoryDelegate {
    
    let networkService: NetworkServiceDelegate
    let realmService: RealmServiceDelegate
    
    init(networkService: NetworkServiceDelegate, realmService: RealmServiceDelegate) {
        self.networkService = networkService
        self.realmService = realmService
    }
    
    func getRepositories() {
        
    }
}
