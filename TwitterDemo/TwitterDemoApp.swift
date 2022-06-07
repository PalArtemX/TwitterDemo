//
//  TwitterDemoApp.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 02/06/2022.
//

import SwiftUI

@main
struct TwitterDemoApp: App {
    @StateObject var twitterVM = TwitterVM()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                //HomeView()
                LoginView()
                    .environmentObject(twitterVM)
            }
        }
    }
}
