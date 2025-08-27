//
//  AuthLocalStorage.swift
//  FindProiOS
//
//  Created by Osman Kök on 20.04.2025.
//

import Foundation


final class AuthLocalStorage {
    static let shared = AuthLocalStorage()
    private init() {}
    
    private let userIdKey = "userId"

    func saveUserId(_ userId: Int?) {
        UserDefaults.standard.set(userId, forKey: userIdKey)
    }

    func getUserId() -> Int? {
        let id = UserDefaults.standard.integer(forKey: userIdKey)
        return id == 0 ? nil : id
    }

    func clearUserId() {
        UserDefaults.standard.removeObject(forKey: userIdKey)
    }
}

