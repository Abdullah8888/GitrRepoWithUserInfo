//
//  UserDetailViewModel.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

final class UserDetailViewModel: ObservableObject {
    
    private let getUserByIdUseCase: GetUserByIdUseCaseDelegate
    
    init(getUserByIdUseCase: GetUserByIdUseCaseDelegate) {
        self.getUserByIdUseCase = getUserByIdUseCase
    }
    
    func fetchUserBy(id: String){
        
    }
}
