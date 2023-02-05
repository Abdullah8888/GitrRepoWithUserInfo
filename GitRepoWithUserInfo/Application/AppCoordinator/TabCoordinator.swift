//
//  TabCoordinator.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import Foundation
import SwiftUI

enum TabSelection {
    case home
    case repository
    case user
}

class TabCoordinator: ObservableObject {
    
    @Published var tabSelection: TabSelection = .home
    private let dependencies: DependenciesDelegate
    
    init(dependencies: DependenciesDelegate) {
        self.dependencies = dependencies
    }
    
    @ViewBuilder func homeView() -> HomeCoordinatorView {
        HomeCoordinatorView(homeCoordinator: self.dependencies.makeHomeCoordinator())
    }
    
    @ViewBuilder func usersListView() -> UserCoordinatorView {
        UserCoordinatorView(userCoordinator: self.dependencies.makeUserCoordinator())
    }
    
    @ViewBuilder func repositoryListView() -> RepositoryCoordinatorView {
        RepositoryCoordinatorView(repositoryCoordinator: self.dependencies.makeRepositoryCoordinator())
    }
}
