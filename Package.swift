// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "QDPublisher",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "QDPublisher",
            targets: ["QDPublisher"]),
    ],
    dependencies: [
        .package(name: "Gzip", url: "https://github.com/1024jp/GzipSwift.git", from: "5.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "QDPublisher", path: "QDPublisher.xcframework")
    ]
)
