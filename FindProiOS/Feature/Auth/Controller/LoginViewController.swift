//
//  LoginViewController.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//

import SwiftUI

class LoginViewController: UIHostingController<LoginView>, LoginViewDelegate {
    
    private var authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol = AuthService()) {
        self.authService = authService
        super.init(rootView: LoginView())
        self.rootView.delegate = self
    }

    required init?(coder: NSCoder) {
        self.authService = AuthService()
        super.init(coder: coder, rootView: LoginView())
        self.rootView.delegate = self
    }

    func login(request: LoginRequest) {
        Task {
            let response = try await authService.login(request: request)
            if response.success {
                AuthLocalStorage.shared.saveUserId(response.user?.userId)
                navigateToHomeView()
            } else {
                print(response.message ?? "Kayıt başarısız")
            }
        }
    }

    func navigateToHomeView() {
        let homeVC = HomeViewController()
        navigationController?.pushViewController(homeVC, animated: true)
    }

    func navigateToRegister() {
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }
}
