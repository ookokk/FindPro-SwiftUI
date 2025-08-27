//
//  EndpointProtocol.swift
//  FindProiOS
//
//  Created by Osman Kök on 20.04.2025.
//

import Foundation

protocol Endpoint {
    var path: String { get }
    var body: Data? { get }
}

extension Endpoint {
    func urlRequest(baseURL: URL) -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = body
        return request
    }
}
