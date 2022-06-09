//
//  TwitterDemoApp.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 02/06/2022.
//

import SwiftUI
import Firebase


@main
struct TwitterDemoApp: App {
    @StateObject var authVM = AuthVM()
    @StateObject var twitterVM = TwitterVM()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                //HomeView()
                PhotoSelectorView()
            }
            .environmentObject(authVM)
            .environmentObject(twitterVM)
        }
    }
}
