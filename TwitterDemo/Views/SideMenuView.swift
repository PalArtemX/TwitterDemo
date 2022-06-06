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
            
            // MARK: - SideMenu
            ForEach(SideMenu.allCases, id: \.self) { sideMenu in
                if sideMenu == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(sideMenu: sideMenu)
                    }
                } else if sideMenu == .logout {
                    Button {
                        print("Handle logout here...")
                    } label: {
                        SideMenuOptionRowView(sideMenu: sideMenu)
                    }
                } else {
                    SideMenuOptionRowView(sideMenu: sideMenu)
                }
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
