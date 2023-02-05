//
//  SwiftUIView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 05/02/2023.
//

import SwiftUI

struct AppCoordinatorView: View {
    @StateObject var appCoordinator: AppCoordinator
    @State var userDefault: UserDefaultsHelperDelegate
    
    var body: some View {
        switch AppCoordinatorViewFlow(rawValue: userDefault.hasShowLaunchView) {
            case .launch:
                appCoordinator.launchView()
            case .tab:
                appCoordinator.tabCoordinatorView()
            case .none:
                appCoordinator.launchView()
        }
    }
}

