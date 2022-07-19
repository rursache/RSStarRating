// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RSRatingView",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "RSRatingView", targets: ["RSRatingView"])
    ],
    targets: [
        .target(
            name: "RSRatingView",
            path: "Files",
            resources: [
                .process("RSRatingStackView.xib")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
