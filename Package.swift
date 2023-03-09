// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPhiSelphIDWidgetiOSLight",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FPhiSelphIDWidgetiOSLight",
            targets: ["FPhiSelphIDWidgetiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/SDK-ZipZap-SPM.git", from: "1.0.0"),
        .package(url: "git@github.com:facephi/microblink-framework.git", branch: "feature/SM-1429_Add_SPM_Support")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FPhiSelphIDWidgetiOSLight",
            dependencies: [
                "FPhiSelphIDWidgetiOS",
                .product(name: "FPhiZipZap", package: "SDK-ZipZap-SPM"),
                .product(name: "Microblink", package: "microblink-framework")
            ],
            resources: [.copy("fphi-selphid-widget-resources-selphid-1.0.zip")]),
        .binaryTarget(name: "FPhiSelphIDWidgetiOS", path: "FPhiSelphIDWidgetiOS.xcframework")
    ]
)
