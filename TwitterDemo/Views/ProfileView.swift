//
//  ProfileView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 02/06/2022.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var twitterVM: TwitterVM
    @Environment(\.dismiss) var dissmis
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomLeading) {
                // MARK: - BackgroundTop
                Color(.systemBlue)
                    .ignoresSafeArea()
                
                VStack {
                    // MARK: Back Button
                    backButton

                    // MARK: Image
                    image
                }
            }
            .frame(height: 96)
            
            // MARK: bellAndEditProfileButton
            bellAndEditProfileButton
            
            // MARK: infoUser
            infoUser
            
            // MARK: tweetFilterBar
            tweetFilterBar
            
            // MARK: tweetsView
            tweetsView
            
            Spacer()
        }
    }
}










struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(TwitterVM())
    }
}




// MARK: - Extension View
extension ProfileView {
    // MARK: backButton
    var backButton: some View {
        Button {
            dissmis()
        } label: {
            Image(systemName: "arrow.left")
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.white)
        }
    }
    
    // MARK: image
    var image: some View {
        Circle()
            .frame(width: 72, height: 72)
            .offset(x: 16, y: 24)
    }
    
    // MARK: bellAndEditProfileButton
    var bellAndEditProfileButton: some View {
        HStack(spacing: 12.0) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(5)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .padding(.horizontal)
                    .padding(5)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                    .foregroundColor(.primary)
            }

        }
        .padding(.trailing)
    }
    
    // MARK: infoUser
    var infoUser: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            HStack {
                Text("Heath Ledger")
                    .font(.title2)
                    .bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                
            }
            
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your moms favorite villain")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                }
                
                
                HStack {
                    Image(systemName: "link")
                    Text("www.thejoker.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserStatsView()
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    // MARK: tweetFilterBar
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilter.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(twitterVM.selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(twitterVM.selectedFilter == item ? .black : .gray)
                    
                    if twitterVM.selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.twitterVM.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    // MARK: tweetsView
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...9, id: \.self){ _ in
                    TweetRowView()
                }
            }
        }
    }
}
