//
//  SideMenuOptionRowView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 06/06/2022.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let sideMenu: SideMenu
    
    var body: some View {
        HStack(spacing: 16.0) {
            Image(systemName: sideMenu.imageName)
                .symbolRenderingMode(.hierarchical)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(sideMenu.title)
                .foregroundColor(.primary)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}










struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideMenuOptionRowView(sideMenu: .profile)
                .previewLayout(.sizeThatFits)
            SideMenuOptionRowView(sideMenu: .logout)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
