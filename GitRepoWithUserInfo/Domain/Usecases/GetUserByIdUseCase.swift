//
//  GetUserByIdUseCase.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

protocol GetUserByIdUseCaseDelegate {
    func execute()
}

class GetUserByIdUseCase: GetUserByIdUseCaseDelegate {
    
    let gitRepository: GitRepositoryDelegate
    
    init(gitRepository: GitRepositoryDelegate) {
        self.gitRepository = gitRepository
    }
    
    func execute() {
        
    }
}
