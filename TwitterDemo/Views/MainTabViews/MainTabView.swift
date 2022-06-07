//
//  MainTabView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 02/06/2022.
//

import SwiftUI

struct MainTabView: View {
    // FIXME: - @State var selectedIndex
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            // MARK: - FeedView
            FeedView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            // MARK: - ExploreView
            ExploreView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(1)
            
            // MARK: - NotificationsView
            NotificationsView()
                .onTapGesture {
                    selectedIndex = 2
                }
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .tag(2)
            
            // MARK: - MessagesView
            MessagesView()
                .onTapGesture {
                    selectedIndex = 3
                }
                .tabItem {
                    Label("Message", systemImage: "envelope")
                }
                .tag(3)
        }
        .labelStyle(.automatic)
    }
}










struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
