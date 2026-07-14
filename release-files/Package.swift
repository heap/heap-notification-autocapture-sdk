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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", .exact("0.10.0-alpha.5")),
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
            checksum: "efdcca914d10ffb300d320a0ecc7b06c764bb7e7668fdd4ab65c81664beed340"
    )
    ],
    swiftLanguageVersions: [.v5]
)
