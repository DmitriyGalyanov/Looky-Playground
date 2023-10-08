//
//  PostDataMock.swift
//  Looky Playground
//
//  Created by Dmitriy Galyanov on 08.10.2023.
//

import Foundation

let postsMock = [
  Post(
    author: Author(
      avatarImageName: "sampleAvatar",
      isVerified: true,
      displayName: "Sample Author"
    ),
    datePostedString: "Day ago",
    locationName: "Moscow",
    // tallest Media AspectRatio
    aspectRatio: .Ratio3x4,
    media: [
      Media(uri: "sampleMedia0"),
      Media(uri: "sampleMedia1"),
      Media(uri: "sampleMedia2"),
      Media(uri: "sampleMedia3"),
      Media(uri: "sampleMedia4"),
      Media(uri: "sampleMedia5"),
      Media(uri: "sampleMedia6"),
      Media(uri: "sampleMedia7"),
    ]
  ),
  Post(
    author: Author(
      avatarImageName: "sampleAvatar",
      isVerified: false,
      displayName: "Second Author"
    ),
    datePostedString: "3 Days ago",
    locationName: "Saint-Petersburg",
    // tallest Media AspectRatio
    aspectRatio: .Ratio3x4,
    media: [
      Media(uri: "sampleMedia4"),
      Media(uri: "sampleMedia5"),
      Media(uri: "sampleMedia6"),
      Media(uri: "sampleMedia7"),
      Media(uri: "sampleMedia0"),
      Media(uri: "sampleMedia1"),
      Media(uri: "sampleMedia2"),
      Media(uri: "sampleMedia3"),
    ]
  ),
  Post(
    author: Author(
      avatarImageName: "sampleAvatar",
      isVerified: false,
      displayName: "Third Author"
    ),
    datePostedString: "Week ago",
    locationName: "Saint-Petersburg",
    // tallest Media AspectRatio
    aspectRatio: .Ratio3x4,
    media: [
      Media(uri: "sampleMedia6"),
      Media(uri: "sampleMedia7"),
      Media(uri: "sampleMedia0"),
      Media(uri: "sampleMedia1"),
      Media(uri: "sampleMedia4"),
      Media(uri: "sampleMedia5"),
      Media(uri: "sampleMedia2"),
      Media(uri: "sampleMedia3"),
    ]
  ),
  Post(
    author: Author(
      avatarImageName: "sampleAvatar",
      isVerified: true,
      displayName: "Fourth Author"
    ),
    datePostedString: "3 Days ago",
    locationName: "Moscow",
    // tallest Media AspectRatio
    aspectRatio: .Ratio3x4,
    media: [
      Media(uri: "sampleMedia7"),
      Media(uri: "sampleMedia0"),
      Media(uri: "sampleMedia1"),
      Media(uri: "sampleMedia2"),
      Media(uri: "sampleMedia4"),
      Media(uri: "sampleMedia5"),
      Media(uri: "sampleMedia6"),
      Media(uri: "sampleMedia3"),
    ]
  )
]

let postMock = postsMock[0]
