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
            checksum: "c2c8c77ac9c20411339e367fb93e3babd6cb0c052938335544786cf6a9800581"
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
