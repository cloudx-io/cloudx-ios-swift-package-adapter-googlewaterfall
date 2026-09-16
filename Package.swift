// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXGoogleWaterfallAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXGoogleWaterfallAdapter",
            targets: ["CloudXGoogleWaterfallAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            exact: "13.9.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXGoogleWaterfallAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-googlewaterfall/13.9.0.0/CloudXGoogleWaterfallAdapter.xcframework.zip",
            checksum: "418afbdba093523bf21e0d84c593d40be590cad1bcdf3bd414edf24650592734"
        ),
        .target(
            name: "CloudXGoogleWaterfallAdapterPackage",
            dependencies: [
                "CloudXGoogleWaterfallAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ]
        ),
        .testTarget(
            name: "CloudXGoogleWaterfallAdapterSwiftTests",
            dependencies: ["CloudXGoogleWaterfallAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXGoogleWaterfallAdapterObjCTests",
            dependencies: ["CloudXGoogleWaterfallAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
