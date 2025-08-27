//
//  RegisterViewController.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//
import SwiftUI

class RegisterViewController: UIHostingController<RegisterView>, RegisterViewDelegate {

    private var authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol = AuthService()) {
        self.authService = authService
        super.init(rootView: RegisterView())
        self.rootView.delegate = self
    }

    required init?(coder: NSCoder) {
        self.authService = AuthService()
        super.init(coder: coder, rootView: RegisterView())
        self.rootView.delegate = self
    }

    func register(request: RegisterRequest) {
        Task {
            let response = try await authService.register(request: request)
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

    func navigateToLogin() {
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }
}
