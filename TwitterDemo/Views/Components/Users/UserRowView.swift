//
//  UserRowView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 05/06/2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12.0) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4.0) {
                Text("joker")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}










struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserRowView()
                .previewLayout(.sizeThatFits)
            UserRowView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
