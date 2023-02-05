//
//  AppCoordinator.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 05/02/2023.
//

import Foundation
import SwiftUI

enum AppCoordinatorViewFlow: String {
    case launch = "launch"
    case tab = "tab"
}

class AppCoordinator: ObservableObject {
    @Published var appView: AppCoordinatorViewFlow = .launch
    private let dependencies: DependenciesDelegate
    
    init(dependencies: DependenciesDelegate) {
        self.dependencies = dependencies
    }
    
    @ViewBuilder func showAppCoordinatorView() -> AppCoordinatorView {
        AppCoordinatorView(appCoordinator: self, userDefault: self.dependencies.makeUserDefaultsHelper())
    }
    
    @ViewBuilder func launchView() -> LaunchView {
        LaunchView(appCoordinator: self,
                   userDefault: self.dependencies.makeUserDefaultsHelper())
    }
    
    @ViewBuilder func tabCoordinatorView() -> TabCoordinatorView {
        TabCoordinatorView(tabCoordinator: self.dependencies.makeTabCoordinator())
    }
}

