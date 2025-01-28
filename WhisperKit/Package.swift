// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WhisperAX",
    platforms: [
        .iOS(.v14)  // Specify the platform and version your app targets
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.3.0"),
        .package(url: "https://github.com/huggingface/swift-transformers.git", from: "0.1.8"),
    ],
    targets: [
        .target(
            name: "WhisperAX",
            dependencies: [
                "swift-argument-parser",
                "swift-transformers"
            ]
        ),
        .testTarget(
            name: "WhisperAXTests",
            dependencies: ["WhisperAX"]
        ),
    ]
)
