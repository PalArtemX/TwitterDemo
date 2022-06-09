//
//  ExtensionView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 09/06/2022.
//

import SwiftUI


extension View {
    func profileImageModifier() -> some View {
        modifier(ProfileImageModifier())
    }
}
