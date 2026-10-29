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
            exact: "13.11.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXGoogleWaterfallAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-googlewaterfall/releases/download/binary/13110000.0.0/CloudXGoogleWaterfallAdapter.xcframework.zip",
            checksum: "5012bfeee41180a8be923cc21fd19f45bb0ccd74b070a69e5cc0e3740bfc8e47"
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
