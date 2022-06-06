//
//  FeedView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 02/06/2022.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // MARK: - ScrollView
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self) { _ in
                        TweetRowView()
                        Divider()
                    }
                }
            }
            
            // MARK: - Button New Tweet
            Button {
                showNewTweetView.toggle()
            } label: {
                labelButton
            }
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }

        }
    }
}










struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}









extension FeedView {
    // MARK: labelButton
    var labelButton: some View {
        ZStack {
            Image(systemName: "note.text.badge.plus")
                .symbolRenderingMode(.hierarchical)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.blue)
        .clipShape(Circle())
        .padding()
        .opacity(0.9)
    }
}
