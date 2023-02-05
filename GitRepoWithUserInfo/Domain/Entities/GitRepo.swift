//
//  GitRepo.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 25/01/2023.
//

import Foundation
import RealmSwift

// Start of GitRepo Model //
class GitRepo: Identifiable {
    var id: UUID?
    var nodeID, name, fullName: String?
    var welcomePrivate: Bool?
    var owner: GitOwner?
    var description: String?
    var fork: Bool?
    var visibility: String?
    var score: Int?
    var updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case welcomePrivate = "private"
        case updatedAt = "updated_at"
        case owner, description, fork, visibility, score
    }
}

class GitOwner: Identifiable {
    var login: String?
    var id: UUID?
    var avatarURL: String?

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL = "avatar_url"
    }
}

// End of GitRepo Model //


// Start of GitRepo as an entity //
    
class GitRepoEntity: Codable {
    var items: [GitRepoItemEntity]?
}

class GitRepoItemEntity: Object, Codable {
    @Persisted var id: Int?
    @Persisted(primaryKey: true) var name: String?
    @Persisted var nodeID: String?
    @Persisted var fullName: String?
    @Persisted var welcomePrivate: Bool?
    @Persisted var owner: GitOwnerEntity?
    //@Persisted var description: String
    @Persisted var fork: Bool?
    @Persisted var visibility: String?
    @Persisted var score: Int?
    @Persisted var updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case welcomePrivate = "private"
        case updatedAt = "updated_at"
        case owner, fork, visibility, score
    }
}

class GitOwnerEntity: Object, Codable {
    @Persisted var login: String?
    @Persisted var id: Int?
    @Persisted var avatarURL: String?

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL = "avatar_url"
    }
}

// End of GitRepo as an entity //







//struct GitRepoData: Identifiable {
//    let items: [GitRepo]?
//}
//
//struct GitRepo: Codable {
//    let id: Int?
//    let nodeID, name, fullName: String?
//    let welcomePrivate: Bool?
//    let owner: GitOwner?
//    let description: String?
//    let fork: Bool?
//    let visibility: String?
//    let score: Int?
//    let updatedAt: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case nodeID = "node_id"
//        case name
//        case fullName = "full_name"
//        case welcomePrivate = "private"
//        case updatedAt = "updated_at"
//        case owner, description, fork, visibility, score
//    }
//}
//
//struct GitOwner: Codable {
//    let login: String?
//    let id: Int?
//    let avatarURL: String?
//
//    enum CodingKeys: String, CodingKey {
//        case login, id
//        case avatarURL = "avatar_url"
//    }
//}
