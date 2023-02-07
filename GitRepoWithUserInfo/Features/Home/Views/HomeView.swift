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
        VStack(alignment: .leading, spacing: 30) {
            Text("Home")
                .font(Font.manropeExtraBold(size: 25))
                
            HStack(spacing: 10) {
                homeCard(imgName: "user_icon", text: "Users", color: .hexECF5F8)
                    .onTapGesture {
                        tabCoordinator.tabSelection = .user
                    }
                
                homeCard(imgName: "repo_icon", text: "Repositories", color: .hexF6EDF8)
                    .onTapGesture {
                        tabCoordinator.tabSelection = .repository
                    }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            Spacer()
        }
        .padding([.leading, .trailing], 18)
        .background(Color.hexF5F5F5)
    }
    
    @ViewBuilder func homeCard(imgName: String, text: String, color: Color) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(imgName)
                Spacer()
                Text(text)
                    .font(Font.system(size: 16))
                    .bold()
            }
            .padding(10)

            Spacer()
        }
        .background(color)
        .cornerRadius(2)
        .modifier(HomeCardShadow())
        
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(coordinator: HomeCoordinator(dependencies: Dependencies()))
    }
}



