//
//  User.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 10/06/2022.
//

import Foundation
import FirebaseFirestoreSwift


struct User: Identifiable, Codable {
    @DocumentID var id: String?
    
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
