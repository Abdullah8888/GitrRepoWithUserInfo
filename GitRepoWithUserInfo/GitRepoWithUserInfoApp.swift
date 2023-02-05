//
//  GitRepoWithUserInfoApp.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 24/01/2023.
//

import SwiftUI


@main
struct GitRepoWithUserInfoApp: App {
    
    let appCoordinator = AppCoordinator.init(dependencies: Dependencies())
    
    var body: some Scene {
        WindowGroup {
            appCoordinator.showAppCoordinatorView()
            //AppCoordinatorView(appCoordinator: appCoordinator)
        }
    }
}
