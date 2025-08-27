//
//  AuthEndpoint.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

import Foundation

enum AuthEndpoint: Endpoint {
    case login(request: LoginRequest)
    case register(request: RegisterRequest)

    var path: String {
        switch self {
        case .login:
            return EndPointEnum.login.rawValue
        case .register:
            return EndPointEnum.register.rawValue
        }
    }
    
    var body: Data? {
        switch self {
        case .login(let request):
            return try? JSONEncoder().encode(request)
        case .register(let request):
            return try? JSONEncoder().encode(request)
        }
    }
}

