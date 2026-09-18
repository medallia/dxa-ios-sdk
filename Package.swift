// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "dxa-ios-react-native-sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "dxa-ios-react-native-sdk", targets: ["MedalliaDXAReactNativeSDKWrapper"])
    ],
    dependencies: [
        .package(name: "MedalliaBridgeSDK", url: "https://github.com/medallia/mobile-ios-bridge-sdk.git", .upToNextMajor(from: "1.3.1"))
    ],
    targets: [
        .binaryTarget(name: "MedalliaDXAReactNative", path: "MedalliaDXAReactNative.xcframework"),
        .target(name: "MedalliaDXAReactNativeSDKWrapper", dependencies: [
            .target(name: "MedalliaDXAReactNative"),
            .product(name: "medallia-mobile-bridge-ios-sdk", package: "MedalliaBridgeSDK")
        ], path: "Sources/MedalliaDXAReactNativeSDKWrapper")
    ]
)
