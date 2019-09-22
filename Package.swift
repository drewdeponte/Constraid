// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Constraid",
    products: [
        .library(name: "Constraid", targets: ["Constraid"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(name: "Constraid", dependencies: []),
        .testTarget(name: "ConstraidTests", dependencies: ["Constraid"]),
    ]
)
