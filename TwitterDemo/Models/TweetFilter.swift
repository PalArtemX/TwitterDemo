//
//  TweetFilter.swift
//  TwitterDemo
//
//  Created by Artem Paliutin on 05/06/2022.
//

import Foundation


enum TweetFilter: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets:
            return "Tweets"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }
}
