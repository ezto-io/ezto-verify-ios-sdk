// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EztoVerifyIosSdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EztoVerifyIosSdk",
            targets: ["EztoVerifyIosSdk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", .upToNextMajor(from: "1.8.3")),
        .package(url: "https://github.com/iProov/ios", .upToNextMajor(from: "12.2.1")),
        .package(url: "https://github.com/google/promises", .upToNextMajor(from: "2.4.0")),
        .package(url: "https://github.com/socketio/socket.io-client-swift", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "EztoVerify",
            path: "./release/EztoVerify-Debug.xcframework.zip"
        ),
        .target(
            name: "EztoVerifyIosSdk",
            dependencies: [
                .target(name: "EztoVerify"),
                "CryptoSwift",
                .product(name: "iProov", package: "ios"),
                .product(name: "Promises", package: "promises"),
                .product(name: "FBLPromises", package: "promises"),
                .product(name: "SocketIO", package: "socket.io-client-swift"),
            ]
        ),
    ]
)
