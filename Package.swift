// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Bond",
    products: [
        .library(name: "Bond", targets: ["Bond"])
    ],
    dependencies: [
        .package(url: "https://github.com/DeclarativeHub/ReactiveKit.git", .upToNextMajor(from: "3.10.0")),
        .package(url: "https://github.com/tonyarnold/Differ.git", .upToNextMajor(from: "1.4.1"))
    ],
    targets: [
        .target(name: "BNDProtocolProxyBase"),
        .target(name: "Bond", dependencies: ["BNDProtocolProxyBase", "ReactiveKit", "Differ"]),
        .testTarget(name: "BondTests", dependencies: ["Bond"])
    ]
)
