//
//  AuthButtonView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import SwiftUI

struct AuthButtonView: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(title) {
            action()
        }
        .font(.headline)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .padding()
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
    }
}










struct AuthButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AuthButtonView(title: "Sign In", action: {})
                .previewLayout(.sizeThatFits)
            AuthButtonView(title: "Sign", action: {})
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
