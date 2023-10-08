//
//  ContentView.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 08.10.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      LazyVStack {
        ForEach(postsMock) { post in
          PostView(post: post)
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
