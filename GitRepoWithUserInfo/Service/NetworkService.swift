//
//  NetworkService.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

protocol NetworkServiceDelegate {
    func fetch()
}

class NetworkService: NetworkServiceDelegate {
    
    let urlSession: URLSession
    let baseUrl: String
    
    init(urlSession: URLSession, baseURL: String) {
        self.urlSession = urlSession
        self.baseUrl = baseURL
    }
    
    func fetch() {
        
    }
}
