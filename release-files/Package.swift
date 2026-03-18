// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "HeapNotificationAutocapture",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
    ],
    products: [
        .library(name: "HeapNotificationAutocapture", targets: [
            "__HeapNotificationAutocapture",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.8.8"),
    ],
    targets: [
        .target(
            name: "__HeapNotificationAutocapture",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapNotificationAutocapture",
            ]
        ),
        .binaryTarget(
            name: "HeapNotificationAutocapture",
            url: "https://github.com/heap/heap-notification-autocapture-sdk/releases/download/0.8.4/package.zip",
            checksum: "d93b29c5d02a828cf9346d3010520dea5ba199b1aeee3eac32e4d1fc430f4757"
    )
    ],
    swiftLanguageVersions: [.v5]
)
