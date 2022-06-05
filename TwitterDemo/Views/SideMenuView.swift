//
//  SideMenuView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 05/06/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32.0) {
            
            // MARK: -
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
                
            }
            .padding(.leading)
            
            // MARK: -
            ForEach(SideMenu.allCases, id: \.self) { option in
                HStack(spacing: 16.0) {
                    Image(systemName: option.imageName)
                        .symbolRenderingMode(.hierarchical)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
            }
            .padding(.vertical, 4)
            
            Spacer()
        }
    }
}










struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
