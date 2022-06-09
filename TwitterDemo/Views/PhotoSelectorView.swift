//
//  PhotoSelectorView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 09/06/2022.
//

import SwiftUI

struct PhotoSelectorView: View {
    var body: some View {
        VStack(spacing: 45) {
            AuthHeaderView(headerTop: "Setup account.", headerBottom: "Add a profile photo.", corner: .bottomRight)
            
            Button {
                // FIXME: - add photo
            } label: {
                Image(systemName: "plus.square.dashed")
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.hierarchical)
                    .frame(width: 180, height: 180)
                    .padding()
                    .padding(.top)
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}










struct PhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSelectorView()
    }
}
