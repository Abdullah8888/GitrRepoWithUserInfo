//
//  UserDetailView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import SwiftUI

protocol UserDetailsFlow: AnyObject {
    func goBack()
}

struct UserDetailView: View {
    @State var userCoordinator: UserDetailsFlow?
    @StateObject var viewModel: UserDetailViewModel
    
    var body: some View {
        Text("User Details")
            .ignoresSafeArea()
            .navigationTitle("UserDetails")
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let dependencies = Dependencies()
        UserDetailView(
            userCoordinator: dependencies.makeUserCoordinator(),
            viewModel: UserDetailViewModel(getUserByIdUseCase: dependencies
                .makeGetUserByIdUseCase()))
    }
}
