//
//  CustomInputFieldView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 07/06/2022.
//

import SwiftUI

struct CustomInputFieldView: View {
    let imageName: String
    let placeholderText: String
    let isSecureField: Bool
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .symbolRenderingMode(.hierarchical)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.gray)
                
                
                if isSecureField {
                    SecureField(placeholderText, text: $text)
                } else {
                    TextField(placeholderText, text: $text)
                }
               
                
                
            }
            
            Divider()
                .background(Color.gray)
        }
    }
}










struct CustomInputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputFieldView(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: .constant(""))
    }
}
