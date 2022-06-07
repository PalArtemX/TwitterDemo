//
//  RegistrationView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authVM: AuthVM
    
    var body: some View {
        VStack {
            AuthHeaderView(headerTop: "Get started.", headerBottom: "Create your account", corner: [.bottomRight])
            
            VStack(spacing: 40.0) {
                CustomInputFieldView(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomInputFieldView(imageName: "person", placeholderText: "Username", text: $username)
                CustomInputFieldView(imageName: "person", placeholderText: "Full name", text: $fullName)
                CustomInputFieldView(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding()
            
            AuthButtonView(title: "Sign") {
                authVM.register(withEmail: email, password: password, fullName: fullName, username: username)
            }
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding()
            
        }
        .ignoresSafeArea()
    }
}










struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
            .environmentObject(AuthVM())
    }
}
