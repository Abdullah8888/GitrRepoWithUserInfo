//
//  RepositoryCoordinator.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI

class RepositoryCoordinator: ObservableObject, Identifiable {

    private let dependencies: DependenciesDelegate
    
    init(dependencies: DependenciesDelegate) {
        self.dependencies = dependencies
    }
    
    @ViewBuilder func showRepositoryView() -> some View {
        let viewModel = RepositoryViewModel.init(getGitRepoUseCase: dependencies.makeGetGitRepoUseCase())
        RepositoryView(viewModel: viewModel)
    }

}
