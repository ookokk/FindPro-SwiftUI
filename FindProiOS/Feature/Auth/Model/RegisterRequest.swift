//
//  RegisterRequest.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

struct RegisterRequest: Encodable {
    let fullName: String
    let email: String
    let password: String
    let country: String
}

