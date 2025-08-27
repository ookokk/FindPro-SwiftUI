//
//  NetworkManager.swift
//  FindProiOS
//
//  Created by Osman Kök on 20.04.2025.
//

import Foundation

protocol NetworkManaging {
    func fetch<T: Decodable>(from endpoint: Endpoint) async throws -> T
}

final class NetworkManager: NetworkManaging {
    static let shared = NetworkManager()
    
    private let session: URLSession
    private let baseURL: URL
    private init(session: URLSession = .shared) {
        self.session = session
        guard let baseURLString = ProcessInfo.processInfo.environment["BASE_URL"],
              let url = URL(string: baseURLString) else {
            fatalError("BASE_URL environment variable is not set or is invalid.")
        }
        self.baseURL = url
    }
    
    func fetch<T: Decodable>(from endpoint: Endpoint) async throws -> T {
        let request = try endpoint.urlRequest(baseURL: baseURL)
        let (data, response) = try await session.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.invalidResponse
        }
    
        try validateResponse(httpResponse)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data) 
        } catch {
            throw NetworkError.decodingFailed
        }
    }

    
    private func validateResponse(_ response: HTTPURLResponse) throws {
        switch response.statusCode {
        case 200...299:
            return
        case 400...499:
            throw NetworkError.clientError(response.statusCode)
        case 500...599:
            throw NetworkError.serverError(response.statusCode)
        default:
            throw NetworkError.unknownError(response.statusCode)
        }
    }
}
