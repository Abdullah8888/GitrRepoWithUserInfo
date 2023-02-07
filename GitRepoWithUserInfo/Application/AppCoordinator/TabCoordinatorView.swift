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
                .tabItem {
                    Label {
                        Text("Home")
                            .fontWeight(.bold)
                    } icon: {
                        Image(tabCoordinator.tabSelection == .home ?
                              "home_fill" : "home")
                    }
                }
                .tag(TabSelection.home)
                .environmentObject(tabCoordinator)
                
            tabCoordinator.repositoryListView()
                .tabItem {
                    Label {
                        Text("Repositories")
                            .fontWeight(.bold)
                    } icon: {
                        Image(tabCoordinator.tabSelection == .repository ?
                              "search_fill" : "search")
                    }
                }
                .tag(TabSelection.repository)
            
            tabCoordinator.usersListView()
                .tabItem {
                    Label {
                        Text("Users")
                            .fontWeight(.bold)
                    } icon: {
                        Image(tabCoordinator.tabSelection == .user ?
                              "user_fill" : "user")
                    }
                }
                .tag(TabSelection.user)
        }
        .accentColor(.black)
        .onAppear {
            //UITabBar.appearance().isOpaque = false
            UITabBar.appearance().unselectedItemTintColor = UIColor.black
            addTopShadow()
        }

    }
    
    func addTopShadow() {
        let image = UIImage.gradientImageWithBounds(
            bounds: CGRect( x: 0, y: 0, width: UIScreen.main.scale, height: 5),
            colors: [
                UIColor.clear.cgColor,
                UIColor.black.withAlphaComponent(0.1).cgColor
            ]
        )

        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundImage = UIImage()
        appearance.shadowImage = image
        appearance.backgroundColor = .red
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UITabBar.appearance().standardAppearance = appearance
            
    }
}

//struct TabCoordinatorView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabCoordinatorView(coordinator: TabCoordinator.ini)
//    }
//}
