//
//  AppConfiguration.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 26/01/2023.
//

import Foundation
class AppConfiguration {
    
    static let baseUrl: String = {
        return Bundle.main.object(forInfoDictionaryKey: "BaseUrl") as! String
    }()
    
    static let apiKey: String = {
        return Bundle.main.object(forInfoDictionaryKey: "ApiKey") as! String
    }()
}
