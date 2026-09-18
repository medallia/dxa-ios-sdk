// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "dxa-ios-flutter-sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "dxa-ios-flutter-sdk", targets: ["MedalliaDXAFlutterSDKWrapper"])
    ],
    dependencies: [
        .package(name: "MedalliaBridgeSDK", url: "https://github.com/medallia/mobile-ios-bridge-sdk.git", .upToNextMajor(from: "1.3.1"))
    ],
    targets: [
        .binaryTarget(name: "MedalliaDXAFlutter", path: "MedalliaDXAFlutter.xcframework"),
        .target(name: "MedalliaDXAFlutterSDKWrapper", dependencies: [
            .target(name: "MedalliaDXAFlutter"),
            .product(name: "medallia-mobile-bridge-ios-sdk", package: "MedalliaBridgeSDK")
        ], path: "Sources/MedalliaDXAFlutterSDKWrapper")
    ]
)
