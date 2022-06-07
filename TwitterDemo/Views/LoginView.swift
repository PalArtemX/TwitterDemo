//
//  LoginView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack {

            AuthHeaderView(headerTop: "Hello.", headerBottom: "Welcome Back")
            
            textAndSecureField
            
            forgotPasswordButton
            
            AuthButtonView(title: "Sign In") {
                print("Sign In...")
            }
            
            Spacer()
            
            signUpNavigationLink

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}









struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}




// MARK: - Extension View
extension LoginView {    
    // MARK: textAndSecureField
    var textAndSecureField: some View {
        VStack(spacing: 40.0) {
            CustomInputFieldView(imageName: "envelope", placeholderText: "Email", text: $email)
            
            CustomInputFieldView(imageName: "lock", placeholderText: "Password", text: $password)
        }
        .padding(.horizontal, 32)
        .padding(.top, 44)
    }
    
    // MARK: forgotPasswordButton
    var forgotPasswordButton: some View {
        HStack {
            Spacer()
            
            NavigationLink {
                Text("Reset password view...")
            } label: {
                Text("Forgot Password?")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.top)
                    .padding(.trailing)
            }

        }
    }
        
    // MARK: signUpNavigationLink
    var signUpNavigationLink: some View {
        NavigationLink {
            RegistrationView()
                .navigationBarHidden(true)
        } label: {
            HStack {
                Text("Don't have an account?")
                    .font(.footnote)
                
                Text("Sign Up")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
        }
        .padding(.bottom)
        .foregroundColor(.blue)
    }
}
