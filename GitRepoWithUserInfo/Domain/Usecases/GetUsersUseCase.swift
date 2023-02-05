//
//  GetUsersUseCase.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

protocol GetUsersUseCaseDelegate {
    func execute()
}

class GetUsersUseCase: GetUsersUseCaseDelegate {
    
    let userRepository: UserRepositoryDelegate
    
    init(userRepository: UserRepositoryDelegate) {
        self.userRepository = userRepository
    }
    
    func execute() {
        
    }
}
