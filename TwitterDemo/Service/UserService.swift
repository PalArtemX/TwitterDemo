//
//  UserService.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 10/06/2022.
//

import Foundation
import Firebase


struct UserService {
    
    func fetchUser(withUid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }
                
                guard let user = try? snapshot.data(as: User.self) else { return }
                
                
            }
    }
}


