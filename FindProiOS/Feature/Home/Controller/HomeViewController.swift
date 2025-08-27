//
//  HomeViewController.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import SwiftUI

class HomeViewController: UIHostingController<HomeView>, HomeViewDelegate {

    private var authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol = AuthService()) {
        self.authService = authService
        super.init(rootView: HomeView())
        self.rootView.delegate = self
    }

    required init?(coder: NSCoder) {
        self.authService = AuthService()
        super.init(coder: coder, rootView: HomeView())
        self.rootView.delegate = self
    }

}

