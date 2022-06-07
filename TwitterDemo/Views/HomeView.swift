//
//  HomeView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 06/06/2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var authVM: AuthVM
    
    var body: some View {
        Group {
            if authVM.userSession == nil {
                // MARK: - no user logged in
                LoginView()
            } else {
                // MARK: - have a logged in user
                MainInterfaceView()
                
            }
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .environmentObject(AuthVM())
        }
    }
}
