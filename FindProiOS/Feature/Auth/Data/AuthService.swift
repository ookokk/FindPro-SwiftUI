//
//  AuthProtocol.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

protocol AuthServiceProtocol {
    func login(request: LoginRequest) async throws -> AuthResponse
    func register(request: RegisterRequest) async throws -> AuthResponse
}

final class AuthService: AuthServiceProtocol {
    private let network: NetworkManaging

    init(network: NetworkManaging = NetworkManager.shared) {
        self.network = network
    }

    func login(request: LoginRequest) async throws -> AuthResponse {
        return try await network.fetch(from: AuthEndpoint.login(request: request))
    }

    func register(request: RegisterRequest) async throws -> AuthResponse {
        return try await network.fetch(from: AuthEndpoint.register(request: request))
    }
}
