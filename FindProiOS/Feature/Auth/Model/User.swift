//
//  User.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

import Foundation

struct User: Codable {
    var userId: Int?
    var role: String?
    var fullName: String?
    var email: String?
    var city: String?
    var country: String?
    var district: String?
    var phoneNumber: String?
    var hideSearch: Bool?
    var createdAt: String?
    var googleToken: String?
    var appleToken: String?
    var ratings: [Double] = []
    var password: String?
    var profilePicture: String?
    var coverPicture: String?
    var salt: String?
    var createdAtDate: Date? = Date()
    var updatedAtDate: Date? = Date()
}
