// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "LeafProvider",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "LeafProvider",
            targets: ["LeafProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "2.2.1"),
        .package(url: "https://github.com/vapor/leaf.git", .branch("beta"))
    ],
    targets: [
        .target(
            name: "LeafProvider",
            dependencies: ["Vapor", "Leaf"]
        ),
        .testTarget(
            name: "LeafProviderTests",
            dependencies: ["LeafProvider"]
        ),
    ]
)
