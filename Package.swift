// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "LeafProvider",
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
