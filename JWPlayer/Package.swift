// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JWPlayer",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "JWPlayerKit",
            targets: ["JWPlayerKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "JWPlayerKit",
            path: "Framework/JWPlayerKit.xcframework"
        )
    ]
)
