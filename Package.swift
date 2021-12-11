// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Table",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "Table",
            targets: ["Table"]
        )
    ],
    targets: [
        .target(
            name: "Table",
            path: "Source"
        )
    ]
)

