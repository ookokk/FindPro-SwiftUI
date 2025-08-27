//
//  AuthResponse.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

struct AuthResponse: Decodable {
    let success: Bool
    let message: String?
    let user:User?
}
