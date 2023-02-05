//
//  UserCoordinatorView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI



struct UserCoordinatorView: View {
    @StateObject var userCoordinator: UserCoordinator
    
    var body: some View {
        NavigationView {
            userCoordinator.showUsersScreen()
        }
    }
    
    private var profileButton: some View {
            Button(action: { }) {
                Image(systemName: "person.crop.circle")
            }
        }
}

//struct UserCoordinatorView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserCoordinatorView()
//    }
//}
