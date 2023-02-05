//
//  GetGitRepoUseCase.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

struct ErrorModel: Codable, Error {
    let message: String?
}

protocol GetGitRepoUseCaseDelegate {
    func execute(completion: @escaping(Result<GitRepoEntity?, ErrorModel>) -> Void)
}

class GetGitRepoUseCase: GetGitRepoUseCaseDelegate {
    
    
    
    let gitRepository: GitRepositoryDelegate
    
    init(gitRepository: GitRepositoryDelegate) {
        self.gitRepository = gitRepository
    }
 
    func execute(completion: @escaping (Result<GitRepoEntity?, ErrorModel>) -> Void) {
        
    }
}
