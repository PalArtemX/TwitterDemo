//
//  PhotoSelectorView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 09/06/2022.
//

import SwiftUI

struct PhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack(spacing: 45) {
            AuthHeaderView(headerTop: "Setup account.", headerBottom: "Add a profile photo.", corner: .bottomRight)
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .clipShape(Circle())
                        .profileImageModifier()
                } else {
                    Image(systemName: "plus.square.dashed")
                        .resizable()
                        .profileImageModifier()

                }
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }

            if profileImage != nil {
                AuthButtonView(title: "Continue") {
                    // FIXME: - action
                }
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)

    }
}










struct PhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSelectorView()
    }
}
