//
//  AuthHeaderView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import SwiftUI

struct AuthHeaderView: View {
    let headerTop: String
    let headerBottom: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                
                Text(headerTop)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(headerBottom)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
        }
    }
}










struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AuthHeaderView(headerTop: "Hello.", headerBottom: "Welcome Back")
                .previewLayout(.sizeThatFits)
            AuthHeaderView(headerTop: "Hello.", headerBottom: "Welcome Back")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
