//
//  User.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation

class User: Identifiable {
    var id: UUID?
    var login: String?
    var avatarURL: String?
    var type: String?
    var siteAdmin: Bool?
}

import RealmSwift

class UserEntity: Object, Codable {
    @Persisted var login: String?
    @Persisted(primaryKey: true) var id: Int
    @Persisted var avatarURL: String?
    @Persisted var type: String?
    @Persisted var siteAdmin: Bool?

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL = "avatar_url"
        case type
        case siteAdmin = "site_admin"
    }
}

class UserDB: Object {
    @Persisted(primaryKey: true) var searchedUser: String
    @Persisted var users: List<UserEntity>
}


