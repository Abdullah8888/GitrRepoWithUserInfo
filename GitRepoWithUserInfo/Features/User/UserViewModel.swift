//
//  UserViewModel.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

final class UserViewModel: ObservableObject {
    
    private let getUsersUseCase: GetUsersUseCaseDelegate
    
    init(getUsersUseCase: GetUsersUseCaseDelegate) {
        self.getUsersUseCase = getUsersUseCase
    }
    
    func fetchUsers() {
        
    }
}
