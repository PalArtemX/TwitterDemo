//
//  AuthVM.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseStorage
import FirebaseStorageInternal


class AuthVM: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthUser = false
    private var tempUserSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session is \(String(describing: userSession))")
    }
    
    
    // MARK: - Function
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Filed to sign in with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            
            
            
        }
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Filed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.tempUserSession = user
            
            let data = ["email" : email,
                        "username" : username.lowercased(),
                        "fullname" : fullName, "uid" : user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthUser = true
                }
        }
    }
    
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
    func uploadProfileImage(_ image: UIImage) {
        guard let uid = tempUserSession?.uid else { return }
        
        ImageUploader.uploadImage(image: image) { profileImageUrl in
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profileImageUrl" : profileImageUrl]) { _ in
                    self.userSession = self.tempUserSession
                }
        }
    }
}
