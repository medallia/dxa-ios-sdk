// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "medallia-dxa-ios-sdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "medallia-dxa-ios-sdk",
            targets: ["MedalliaDXASDKWrapper"]),
        .library(
            name: "medallia-dxa-ios-objc-sdk",
            targets: ["MedalliaDXAObjc", "MedalliaDXASDKWrapper"]),
    ],
    dependencies: [
        .package(
            name: "MedalliaBridgeSDK",
            url: "https://github.com/medallia/mobile-ios-bridge-sdk.git",
            .upToNextMajor(from: "1.0.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "medallia-dxa-ios-sdk",
            path: "MedalliaDXA.xcframework"
        ),
        .binaryTarget(
            name: "MedalliaDXAObjc",
            path: "MedalliaDXAObjc.xcframework"
        ),
        .target(
            name: "MedalliaDXASDKWrapper",
            dependencies: [
                .target(
                    name: "medallia-dxa-ios-sdk"
                ),
                .product(
                    name: "medallia-mobile-bridge-ios-sdk",
                    package: "MedalliaBridgeSDK"
                )
            ],
            path: "MedalliaDXASDKWrapper"
        )
        
    ]
)
