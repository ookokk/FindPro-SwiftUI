//
//  LoginView.swift
//  FindProiOS
//
//  Created by Osman Kök on 21.04.2025.
//
import SwiftUI

protocol LoginViewDelegate: AnyObject {
    func login(request: LoginRequest)
    func navigateToRegister()
}

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    weak var delegate: LoginViewDelegate?

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.top, 100)

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.top, 20)

            Button(action: handleLogin) {
                Text("Giriş Yap")
                    .frame(width: 200, height: 44)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.top, 20)
            }

            Button(action: goToRegister) {
                Text("Hesabın yok mu? Kayıt ol")
                    .foregroundColor(.blue)
                    .padding(.top, 20)
            }

            Spacer()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Eksik Bilgi"), message: Text("Lütfen email ve şifreyi doldurun."), dismissButton: .default(Text("Tamam")))
        }
        .padding()
    }

    private func handleLogin() {
        guard !email.isEmpty, !password.isEmpty else {
            showAlert = true
            return
        }
        let loginRequest = LoginRequest(email: email, password: password)
        delegate?.login(request: loginRequest)
    }

    private func goToRegister() {
        delegate?.navigateToRegister()
    }
}
