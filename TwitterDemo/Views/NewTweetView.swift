//
//  NewTweetView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 06/06/2022.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dissmis
    
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    dissmis()
                }
                
                Spacer()
                
                Button("Tweet") {
                    print("Tweet")
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .padding()
            
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextAreaView("What's happening?", text: $caption)
            }
            .padding()
        }
    }
}










struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
