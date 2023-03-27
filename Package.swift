// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HeliumSDK",
    products: [
        .library(
            name: "HeliumSDK",
            targets: ["HeliumSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppcentMobile/ACMNetworking", branch: "main"),
    ],
    targets: [
        .target(
            name: "HeliumSDK",
            dependencies: ["ACMNetworking"]
        ),
        .testTarget(
            name: "HeliumSDKTests",
            dependencies: ["HeliumSDK"]
        ),
    ]
)
