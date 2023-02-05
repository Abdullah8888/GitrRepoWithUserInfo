//
//  RealmService.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 26/01/2023.
//

import Foundation
import RealmSwift

protocol RealmServiceDelegate {
    var realm: Realm { get }
}

class RealmService: RealmServiceDelegate {
    var realm: Realm {
        try! Realm()
    }
}
