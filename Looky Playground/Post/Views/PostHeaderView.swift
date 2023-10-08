//
//  PostHeaderView.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 08.10.2023.
//

import SwiftUI

struct PostHeaderView: View {
  var post: Post
  
  var body: some View {
    HStack {
      ZStack {
        Image(post.author.avatarImageName).resizable()
        if post.author.isVerified {
          Image("icVerifiedCheckmark")
            .resizable()
            .frame(width: 16, height: 16)
            .position(CGPoint(x: 26, y: 4))
        }
      }.frame(width: 30, height: 30)
      VStack(alignment: .leading) {
        HStack(spacing: 3) {
          Text("\(post.author.displayName) •").bold()
          Text(post.datePostedString)
        }
        Text(post.locationName)
      }.font(.system(size: 12)).lineLimit(1)
      Spacer()
      Button(action: {print("Show Menu")}, label: {
        Text("•••").font(.system(size: 16)).foregroundColor(.primary)
      })
    }.padding(EdgeInsets(top: 6, leading: 8, bottom: 6, trailing: 8))
  }
}

#Preview {
  PostHeaderView(post: postMock)
}
