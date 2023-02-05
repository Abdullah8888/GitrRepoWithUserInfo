//
//  TabCoordinatorView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI

struct TabCoordinatorView: View {
    
    @StateObject var tabCoordinator: TabCoordinator

    var body: some View {
        TabView(selection: $tabCoordinator.tabSelection) {
            tabCoordinator.homeView()
            .tabItem { Label("Homee", systemImage: "hare.fill") }
            .tag(TabSelection.home)

            tabCoordinator.usersListView()
            .tabItem { Label("User", systemImage: "leaf.fill") }
            .tag(TabSelection.user)
            
            tabCoordinator.repositoryListView()
            .tabItem { Label("Repo", systemImage: "leaf.fill") }
            .tag(TabSelection.repository)
        }
        .environmentObject(tabCoordinator)
    }
}

//struct TabCoordinatorView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabCoordinatorView(coordinator: TabCoordinator.ini)
//    }
//}
