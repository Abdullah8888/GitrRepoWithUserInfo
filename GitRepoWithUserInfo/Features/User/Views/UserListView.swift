//
//  UserView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import SwiftUI

protocol UserListFlow: AnyObject {
    func showSelectedUserScreen(by id: String) -> UserDetailView
}

struct UserListView: View {
    @State var userCoordinator: UserListFlow?
    @StateObject var viewModel: UserViewModel
    @State var testData: User?
    
    var body: some View {
//        NavigationLink(item: $testData, destination: { _ in
//            userCoordinator?.showSelectedUserScreen(by: "")
//        }, label: {
//            
//        })
        NavigationLink(destination: {
            userCoordinator?.showSelectedUserScreen(by: "")
        }, label: {
            Text("Asalam alaykum User List here")
        })
        .navigationTitle("User List")
        
        //.navigationBarTitleDisplayMode(.inline)
        
        
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        let dependencies = Dependencies()
        UserListView(
            userCoordinator: UserCoordinator(dependencies: dependencies),
            viewModel: UserViewModel(getUsersUseCase: dependencies.makeGetUsersUseCase()))
    }
}
