//
//  PostMediaListView.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 08.10.2023.
//

import SwiftUI

struct PostMediaItemView: View {
  var media: Media
  var width: Double
  
  var body: some View {
    Image(media.uri)
      .resizable(resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/)
      .aspectRatio(contentMode: .fit)
      .frame(width: width)
      .onAppear(perform: { print("Image Appeared, uri: \(media.uri)") })
  }
}

let SCREEN_WIDTH = UIScreen.main.bounds.size.width

struct PostMediaListView: View {
  var post: Post
  
  @Environment(\.colorScheme) var colorScheme
  
  func adjustPageIndicatorColors(_ baseColor: UIColor) {
    print("adjustPageIndicatorColors \(baseColor)")
    let appearance = UIPageControl.appearance()
    appearance.currentPageIndicatorTintColor = baseColor
    UIPageControl.appearance().pageIndicatorTintColor = baseColor.withAlphaComponent(0.2)
  }
  
  @State private var displayedMediaIndex = 0
  
  var body: some View {
    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
      TabView(selection: $displayedMediaIndex) {
        ForEach(post.media) { media in
          PostMediaItemView(media: media, width: SCREEN_WIDTH)
            .tag(post.media.firstIndex(of: media)!)
        }
      }.tabViewStyle(PageTabViewStyle())
      Text("\(displayedMediaIndex + 1)/\(post.media.count)")
        .font(.system(size: 10)).bold().foregroundStyle(.white)
        .padding(6)
        .background(.black.opacity(0.8))
        .cornerRadius(6)
        .offset(CGSize(width: -12.0, height: 12.0))
    }.frame(
      width: SCREEN_WIDTH,
      height: SCREEN_WIDTH / post.aspectRatio.rawValue
    )
    .frame(maxHeight: SCREEN_WIDTH / post.aspectRatio.rawValue)
    .onAppear(perform: {
      adjustPageIndicatorColors(colorScheme == .dark ? .white : .black)
    })
    .onDisappear(perform: {
      adjustPageIndicatorColors(colorScheme == .dark ? .black : .white)
    })
    .onChange(of: colorScheme) { newValue in
      // todo: find out how to change colors not re-rendering TabView
      print("changed theme to \(newValue), h: \(SCREEN_WIDTH / post.aspectRatio.rawValue), uiScreenheight:\(SCREEN_WIDTH)")
      adjustPageIndicatorColors(colorScheme == .dark ? .white : .black)
    }
  }
}

#Preview {
  PostMediaListView(post: postMock).padding(.top, 20)
}
