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
            exact: "13.6.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXGoogleWaterfallAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-googlewaterfall/13.6.0.4/CloudXGoogleWaterfallAdapter.xcframework.zip",
            checksum: "5e9a1a0d1d30149436df98b7ad127e1a2b910b75898e24ec396b2bdfcf70e2ff"
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
