//
//  RepositoryViewModel.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation


final class RepositoryViewModel: ObservableObject, Identifiable {
    
    private let getGitRepoUseCase: GetGitRepoUseCaseDelegate
    @Published var gitRepoEntity: GitRepoEntity?
    
    init(getGitRepoUseCase: GetGitRepoUseCaseDelegate) {
        self.getGitRepoUseCase = getGitRepoUseCase
    }
    
    func fetchRepos() {
        getGitRepoUseCase.execute { [weak self] res in
            switch res {
            case .success(let ent):
                if let ent =  ent{
                    self?.gitRepoEntity = ent
                }
                print(ent)
            case .failure(let errModel):
                print(errModel)
            }
        }
    }
}
