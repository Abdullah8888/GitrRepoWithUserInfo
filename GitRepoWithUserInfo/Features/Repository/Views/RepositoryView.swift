//
//  RepositoryView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import SwiftUI

struct RepositoryView: View {

    @StateObject var viewModel: RepositoryViewModel
    
    var body: some View {
        Text("Asalam alaykum repos here")
            .navigationTitle("Repo")
    }
}

struct RepositoryView_Previews: PreviewProvider {
    static var previews: some View {
        let dependencies = Dependencies()
        RepositoryView(viewModel: RepositoryViewModel(getGitRepoUseCase: dependencies.makeGetGitRepoUseCase()))
    }
}
