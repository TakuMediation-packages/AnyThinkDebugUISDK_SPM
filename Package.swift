// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkDebugUISDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkDebugUISDK",
            targets: ["AnyThinkDebugUISDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDebuggerUISDK",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.0/AnyThinkDebuggerUISDK.zip",
            checksum: "67d7b2dafc4459d3778244ec7ccede7b1e42c8ab013f6155a86ba55c22ca5c19"
        ),
        .target(
            name: "AnyThinkDebugUISDKTarget",
            dependencies: [
                "AnyThinkDebuggerUISDK",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM")
            ],
            path: "Sources/AnyThinkDebugUISDKTarget"
        )
    ]
)
