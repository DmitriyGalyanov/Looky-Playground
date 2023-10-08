//
//  PostModel.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 08.10.2023.
//

import Foundation

struct Author {
  let avatarImageName: String
  let isVerified: Bool
  let displayName: String
}

struct Media: Identifiable, Equatable {
  static func == (lhs: Media, rhs: Media) -> Bool {
    return lhs.id == rhs.id
  }
  let id = UUID()
  
  // local for now
  let uri: String
}

struct Post: Identifiable {
  let id = UUID()

  let author: Author
  
  let datePostedString: String
  let locationName: String
  
  let aspectRatio: AspectRatio
  let media: [Media]
}
