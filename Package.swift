// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationFacebookAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "TPNMediationFacebookAdapter",
            targets: ["TPNMediationFacebookAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.22.1")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkFacebookAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkFacebookAdapter/62201.2.10/AnyThinkFacebookAdapter-62201.2.10.zip",
            checksum: "cf4a27e2670021c1d854986a7ae4f740bf3295123ab861458c0da075fcfaa974"
        ),
        .target(
            name: "TPNMediationFacebookAdapterTarget",
            dependencies: [
                "AnyThinkFacebookAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork")
            ],
            path: "Sources/TPNMediationFacebookAdapterTarget"
        )
    ]
)