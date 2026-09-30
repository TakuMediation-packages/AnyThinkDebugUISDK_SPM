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
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/Temp/juhesdk/AnyThinkDebuggerUISDK/1.1.0/AnyThinkDebuggerUISDK.zip",
            checksum: "033f6b241dfa0dfe57b0881d7c83fb042ec0d79123da328af6270cdfd5209737"
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
