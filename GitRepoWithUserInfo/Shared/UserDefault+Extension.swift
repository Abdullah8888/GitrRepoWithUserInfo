//
//  UserDefault+Extension.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 05/02/2023.
//

import Foundation
@propertyWrapper

struct UserDefaultPrimitive<T> {
    private let key: String
    private let defaultValue: T
    
    private let userDefaults = UserDefaults.standard
    
    init(key: String, default: T) {
        self.key = key
        self.defaultValue = `default`
    }
    
    var wrappedValue: T {
        get { (userDefaults.object(forKey: key) as? T) ?? defaultValue }
        set { userDefaults.set(newValue, forKey: key) }
    }
}

protocol UserDefaultsHelperDelegate {
    var hasShowLaunchView: String {set get}
}

final class UserDefaultsHelper: UserDefaultsHelperDelegate {
    
    static let shared = UserDefaultsHelper()
    
    fileprivate init() {}
    
    @UserDefaultPrimitive(key: .HAS_SHOWN_LAUNCH_VIEW, default: "")
    var hasShowLaunchView: String
}

extension String {
    static let HAS_SHOWN_LAUNCH_VIEW = "HAS_SHOWN_LAUNCH_VIEW"
}
