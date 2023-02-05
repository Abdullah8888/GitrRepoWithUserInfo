//
//  HomeView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import SwiftUI

protocol HomeViewFlow: AnyObject {
    func showUserListView() -> UserCoordinatorView
    func showRepositoryView() -> RepositoryCoordinatorView
}

struct HomeView: View {
    @State var coordinator: HomeViewFlow?
    @EnvironmentObject private var tabCoordinator: TabCoordinator
    
    var body: some View {
        HStack.init(alignment: .center, spacing: 20) {
            Button.init {
                tabCoordinator.tabSelection = .user
            } label: {
                Text("Asalam alaykum user here")
            }
            
            Button.init {
                tabCoordinator.tabSelection = .repository
            } label: {
                Text("Asalam alaykum repo here")
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(coordinator: HomeCoordinator(dependencies: Dependencies()))
    }
}
