// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "HeapNotificationAutocapture",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v12),
        .watchOS(.v5),
    ],
    products: [
        .library(
            name: "HeapNotificationAutocapture",
            targets: ["HeapNotificationAutocapture"])
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.7.0"),
    ],
    targets: [
        .target(
            name: "HeapNotificationAutocapture",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapNotificationAutocaptureImplementation",
            ]),
        .binaryTarget(
            name: "HeapNotificationAutocaptureImplementation",
            url: "https://cdn.heapanalytics.com/ios/heap-notification-autocapture-0.7.0.zip",
            checksum: "dd76baafa931dcf1b9a0a2f7a4329f3efbd19d0e4a968d0280e643881f673cba"
        ),
    ]
)
