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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.1/AnyThinkDebuggerUISDK.zip",
            checksum: "1ab602d1b0e126ddb488b43f51bf1336ac6fa53a4ef84be8c299bff3d36d96f1"
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
