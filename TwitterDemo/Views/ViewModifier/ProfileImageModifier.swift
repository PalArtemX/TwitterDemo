//
//  ProfileImageModifier.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 09/06/2022.
//

import SwiftUI


struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            //.resizable()
            .scaledToFit()
            .symbolRenderingMode(.hierarchical)
            .frame(width: 180, height: 180)
    }
}
