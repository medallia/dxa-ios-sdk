// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "medallia-dxa-ios-sdk",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "medallia-dxa-ios-sdk",
            targets: ["MedalliaDXA"]),
        .library(
            name: "medallia-dxa-ios-objc-sdk",
            targets: ["MedalliaDXAObjc", "MedalliaDXA"]),
    ],
    targets: [
            .binaryTarget(
                name: "MedalliaDXA",
                path: "MedalliaDXA.xcframework"
            ),
            .binaryTarget(
                name: "MedalliaDXAObjc",
                path: "MedalliaDXAObjc.xcframework"
            )
    ]
)
