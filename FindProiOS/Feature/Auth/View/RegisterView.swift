//
//  RegisterView.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//
import SwiftUI

protocol RegisterViewDelegate: AnyObject {
    func register(request: RegisterRequest)
    func navigateToLogin()
}

struct RegisterView: View {
    weak var delegate: RegisterViewDelegate?

    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("Kayıt Ol")
                .font(.largeTitle)
                .bold()

            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Ad Soyad", text: $fullName)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Şifre", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                handleRegister()
            }) {
                Text("Kayıt Ol")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            Button(action: {
                delegate?.navigateToLogin()
            }) {
                Text("Zaten hesabın var mı? Giriş yap")
                    .foregroundColor(.blue)
            }

            Spacer()
        }
        .padding()
    }

    private func handleRegister() {
        guard !email.isEmpty, !fullName.isEmpty, !password.isEmpty else {
            print("Eksik bilgi!")
            return
        }

        let request = RegisterRequest(fullName: fullName, email: email, password: password, country: "tr")
        delegate?.register(request: request)
    }
}
