//
//  ImageUploader.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 09/06/2022.
//

import Firebase
import UIKit
import FirebaseStorageInternal
import FirebaseStorage
import Foundation
import SwiftUI


struct ImageUploader {
    
    static func uploadImage(image: UIImage, completion: @escaping (String) -> ()) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
            
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("DEBUG: Failed to upload image with error: \(error.localizedDescription)")
                return
            }
            
            ref.downloadURL { imageUrl, _ in
                guard let imageUrl = imageUrl?.absoluteString else { return }
                completion(imageUrl)
            }
        }
                      
        
        
    }
}
