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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.9.0-alpha.9"),
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
            checksum: "d0f7179d7d2c2ed8057ab3e1d888fde16e280fb3fd6b51b4f4ff5e593ccbc82c"
    )
    ],
    swiftLanguageVersions: [.v5]
)
