//
//  UserStatsView.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 05/06/2022.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4.0) {
                Text("807")
                    .font(.subheadline)
                    .bold()
                
                Text("Fallowing")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 4.0) {
                Text("6.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("Fallowers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}










struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
