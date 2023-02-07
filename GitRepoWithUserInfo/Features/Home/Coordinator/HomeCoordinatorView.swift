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
        homeCoordinator.showHomeView()
    }
}
