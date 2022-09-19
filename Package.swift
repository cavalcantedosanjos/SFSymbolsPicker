// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SFSymbolsPicker",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SFSymbolsPicker",
            targets: ["SFSymbolsPicker"]),
    ],
    targets: [
        .target(
            name: "SFSymbolsPicker",
            dependencies: []),
        .testTarget(
            name: "SFSymbolsPickerTests",
            dependencies: ["SFSymbolsPicker"]),
    ]
)
