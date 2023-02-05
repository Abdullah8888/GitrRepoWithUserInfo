//
//  HomeCoordinator.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI

final class HomeCoordinator: ObservableObject, Identifiable {
    
    
    
    private let dependencies: DependenciesDelegate

    init(dependencies: DependenciesDelegate) {
        self.dependencies = dependencies
    }
    
    @ViewBuilder func showHomeView() -> some View {
        NavigationView {
            HomeView(coordinator: self)
        }
    }

}

extension HomeCoordinator: HomeViewFlow {

    @ViewBuilder func showUserListView() -> UserCoordinatorView {
        UserCoordinatorView.init(userCoordinator: self.dependencies.makeUserCoordinator())
    }
    
    @ViewBuilder func showRepositoryView() -> RepositoryCoordinatorView {
        RepositoryCoordinatorView.init(repositoryCoordinator: self.dependencies.makeRepositoryCoordinator())
    }
}
