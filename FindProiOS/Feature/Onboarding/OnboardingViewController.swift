//
//  OnboardingViewController.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//
import SwiftUI


class OnboardingViewController: UIHostingController<OnboardingView>,OnboardingViewDelegate {

    private var authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol = AuthService()) {
        self.authService = authService
        super.init(rootView: OnboardingView())
        self.rootView.delegate = self
    }

    required init?(coder: NSCoder) {
        self.authService = AuthService()
        super.init(coder: coder, rootView: OnboardingView())
        self.rootView.delegate = self
    }
    
    func navigate() {
        
        if let userId = AuthLocalStorage.shared.getUserId(), userId != 0 {
            print("User already logged in: \(userId)")
            let homeVC = HomeViewController()
          navigationController?.pushViewController(homeVC, animated: true)
        } else {
            print("Not logged in")
            let loginVC = LoginViewController()
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
}
