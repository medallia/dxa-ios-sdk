// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "dxa-ios-sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "dxa-ios-sdk", targets: ["MedalliaDXASDKWrapper"])
    ],
    dependencies: [
        .package(name: "MedalliaBridgeSDK", url: "https://github.com/medallia/mobile-ios-bridge-sdk.git", .upToNextMajor(from: "1.3.1"))
    ],
    targets: [
        .binaryTarget(name: "MedalliaDXA", path: "MedalliaDXA.xcframework"),
        .target(name: "MedalliaDXASDKWrapper", dependencies: [
            .target(name: "MedalliaDXA"),
            .product(name: "medallia-mobile-bridge-ios-sdk", package: "MedalliaBridgeSDK")
        ], path: "Sources/MedalliaDXASDKWrapper")
    ]
)
