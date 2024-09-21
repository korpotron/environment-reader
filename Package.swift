// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "EnvironmentReader",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "EnvironmentReader",
            targets: [
                "EnvironmentReader"
            ]
        ),
    ],
    targets: [
        .target(
            name: "EnvironmentReader"
        ),
    ]
)
