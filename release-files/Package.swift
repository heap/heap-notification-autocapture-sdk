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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.8.0"),
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
            url: "https://github.com/heap/heap-notification-autocapture-sdk/releases/download/0.9.0/package.zip",
            checksum: "a4bd124e28d7bc2f733ca3ba0122d548a9b70f36ad863eaea237fc58efe0467d"
    )
    ],
    swiftLanguageVersions: [.v5]
)
