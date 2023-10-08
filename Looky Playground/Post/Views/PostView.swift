//
//  PostView.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 08.10.2023.
//

import SwiftUI

struct PostView: View {
  var post: Post
  
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    VStack(spacing: 0) {
      PostHeaderView(post: post)
      PostMediaListView(post: post)
      VStack(spacing: 0) {
        PostStatsButtonsView()
        Divider().padding(.bottom, 4)
      }
      .padding(.horizontal, 8)
    }
    .background(colorScheme == .dark ? .black : .white)
  }
}

#Preview {
  PostView(post: postMock)
}
