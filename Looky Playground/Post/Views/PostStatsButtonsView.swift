//
//  PostStatsButtonView.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 09.10.2023.
//

import SwiftUI

struct PostStatsButtonsView: View {
  var body: some View {
    HStack {
      Button(action: {print("Show stats")}, label: {
        HStack(spacing: 0) {
          Image("statsIcon").resizable().frame(width: 16, height: 16)
            .padding(.trailing, 4)
          Text("Post Stats")
            .foregroundColor(Color("Accent"))
            .font(.system(size: 14))
        }
      })
      Spacer()
      Button(action: {print("Promote publication")}, label: {
        Text("Promote publication")
          .foregroundStyle(.white)
          .font(.system(size: 12))
          .padding(EdgeInsets(top: 6, leading: 8, bottom: 6, trailing: 8))
          .background(Color("Accent"))
          .cornerRadius(6)
      })
    }.padding(.vertical, 10)
  }
}

#Preview {
  PostStatsButtonsView()
}
