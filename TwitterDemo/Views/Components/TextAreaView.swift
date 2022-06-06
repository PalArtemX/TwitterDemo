//
//  TextAreaView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 06/06/2022.
//

import SwiftUI

struct TextAreaView: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}










struct TextAreaView_Previews: PreviewProvider {
    static var previews: some View {
        TextAreaView("Some text...", text: .constant(""))
    }
}
