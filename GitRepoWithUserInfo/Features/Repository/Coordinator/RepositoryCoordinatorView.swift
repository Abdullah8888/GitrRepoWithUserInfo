//
//  RepositoryCoordinatorView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 28/01/2023.
//

import SwiftUI

struct RepositoryCoordinatorView: View {
    @StateObject var repositoryCoordinator: RepositoryCoordinator
    
    var body: some View {
        NavigationView {
            repositoryCoordinator.showRepositoryView()
        }
    }
}

//struct RepositoryCoordinatorView_Previews: PreviewProvider {
//    static var previews: some View {
//        RepositoryCoordinatorView(repositoryCoordinator: <#RepositoryCoordinator#>)
//    }
//}
