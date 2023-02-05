//
//  AppDependencies.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 26/01/2023.
//

import Foundation
protocol DependenciesDelegate {
    func makeGetGitRepoUseCase() -> GetGitRepoUseCaseDelegate
    func makeGetUsersUseCase() -> GetUsersUseCaseDelegate
    func makeGetUserByIdUseCase() -> GetUserByIdUseCaseDelegate
    func makeGitRepository() -> GitRepositoryDelegate
    func makeUserRepository() -> UserRepositoryDelegate
    func makeNetworkService() -> NetworkServiceDelegate
    func makeRealmService() -> RealmServiceDelegate
    
    func makeUserCoordinator() -> UserCoordinator
    func makeRepositoryCoordinator() -> RepositoryCoordinator
    func makeHomeCoordinator() -> HomeCoordinator
    func makeAppCoordinator() -> AppCoordinator
    func makeTabCoordinator() -> TabCoordinator
    func makeUserDefaultsHelper() -> UserDefaultsHelper
}

final class Dependencies: DependenciesDelegate {
    
    func makeUserDefaultsHelper() -> UserDefaultsHelper {
        UserDefaultsHelper.shared
    }
    
    func makeAppCoordinator() -> AppCoordinator {
        AppCoordinator(dependencies: self)
    }
    
    func makeTabCoordinator() -> TabCoordinator {
        TabCoordinator(dependencies: self)
    }
    
    func makeUserCoordinator() -> UserCoordinator {
        UserCoordinator(dependencies: self)
    }
    
    func makeRepositoryCoordinator() -> RepositoryCoordinator {
        RepositoryCoordinator(dependencies: self)
    }
    
    func makeHomeCoordinator() -> HomeCoordinator {
        HomeCoordinator(dependencies: self)
    }
    
    func makeGetGitRepoUseCase() -> GetGitRepoUseCaseDelegate {
        GetGitRepoUseCase(gitRepository: makeGitRepository())
    }
    
    func makeGetUsersUseCase() -> GetUsersUseCaseDelegate {
        GetUsersUseCase(userRepository: makeUserRepository())
    }
    
    func makeGetUserByIdUseCase() -> GetUserByIdUseCaseDelegate {
        GetUserByIdUseCase(gitRepository: makeGitRepository())
    }
    
    func makeGitRepository() -> GitRepositoryDelegate {
        GitRepository(
            networkService: makeNetworkService(),
            realmService: makeRealmService())
    }
    
    func makeUserRepository() -> UserRepositoryDelegate {
        UserRepository(
            networkService: makeNetworkService(),
            realmService: makeRealmService())
    }
    
    func makeNetworkService() -> NetworkServiceDelegate {
        let configuration = URLSessionConfiguration.default
        let urlSession = URLSession.init(configuration: configuration)
        let networkService = NetworkService.init(urlSession: urlSession, baseURL: AppConfiguration.baseUrl)
        return networkService
    }
    
    func makeRealmService() -> RealmServiceDelegate {
        RealmService()
    }
    
}
