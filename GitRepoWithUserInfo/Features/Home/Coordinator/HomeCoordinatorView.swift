//
//  HomeCoordinatorView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI

struct HomeCoordinatorView: View {
    
    @StateObject var homeCoordinator: HomeCoordinator
    
    var body: some View {
        NavigationView {
            homeCoordinator.showHomeView()
                .navigationTitle("Home")
        }
        
    }
}

//struct HomeCoordinatorView_Previews: PreviewProvider {
//    static let dd = HomeCoordinator.init()
//    
//    static var previews: some View {
//        HomeCoordinatorView(homeCoordinator: <#HomeCoordinator#>)
//    }
//}

