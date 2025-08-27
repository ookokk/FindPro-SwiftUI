//
//  HomeEndPoint.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import Foundation

enum HomeEndPoint: Endpoint {
    case getJobs(request: LoginRequest)

    var path: String {
        switch self {
        case .getJobs:
            return EndPointEnum.login.rawValue
        
        }
    }
    var body: Data? {
        switch self {
        case .getJobs(let request):
            return try? JSONEncoder().encode(request)
     
        }
    }
}

