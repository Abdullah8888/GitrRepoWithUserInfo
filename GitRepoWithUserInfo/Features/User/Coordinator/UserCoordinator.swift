//
//  UserCoordinator.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI
class UserCoordinator: ObservableObject, Identifiable {

    private let dependencies: DependenciesDelegate
    
    init(dependencies: DependenciesDelegate) {
        self.dependencies = dependencies
    }
    
    @ViewBuilder func showUsersScreen() -> UserListView {
        let viewModel = UserViewModel(
            getUsersUseCase: dependencies.makeGetUsersUseCase())
        UserListView(userCoordinator: self, viewModel: viewModel)
    }
}

extension UserCoordinator: UserListFlow {
    @ViewBuilder func showSelectedUserScreen(by id: String) -> UserDetailView {
        let viewModel = UserDetailViewModel(
            getUserByIdUseCase: dependencies.makeGetUserByIdUseCase())
        UserDetailView.init(userCoordinator: self, viewModel: viewModel)
    }
}

extension UserCoordinator: UserDetailsFlow {
    func goBack() {
        
    }
}


