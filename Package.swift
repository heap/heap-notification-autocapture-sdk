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
            url: "https://github.com/heap/heap-notification-autocapture-sdk/releases/download/0.8.3/package.zip",
            checksum: "7450f57de3a9b9e8d6cd41df19ae801ec09b79986949fef3ec268e237c8cd55a"
    )
    ],
    swiftLanguageVersions: [.v5]
)
