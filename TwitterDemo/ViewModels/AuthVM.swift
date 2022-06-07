//
//  AuthVM.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import Foundation
import SwiftUI
import Firebase


class AuthVM: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session is \(String(describing: userSession))")
    }
    
    
    // MARK: - Function
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login with email \(email)")
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        print("DEBUG: Register with email \(email)")
    }
}
