// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YayaSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "YayaSDK", targets: ["HomeYAYASDK", "loyaltyModule", "billingModuleiOSYAYA"]),
        .library(name: "Lottie", targets: ["LottieWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.0.0")
    ],
    targets: [
        .binaryTarget(name: "HomeYAYASDK", url: "https://github.com/JonaRivera-RB/yaya-sdk-spm/releases/download/v1.0.0/HomeYAYASDK.xcframework.zip", checksum: "d0c315330c728488843d8394dded35b29181d519b87779d68c4b19cfd5a11665"),
        .binaryTarget(name: "loyaltyModule", url: "https://github.com/JonaRivera-RB/yaya-sdk-spm/releases/download/v1.0.0/loyaltyModule.xcframework.zip", checksum: "a45efeae2bf97999642e03dacf2deec3d540942877da4fa3e7d14a5dfb871c1f"),
        .binaryTarget(name: "billingModuleiOSYAYA", url: "https://github.com/JonaRivera-RB/yaya-sdk-spm/releases/download/v1.0.0/billingModuleiOSYAYA.xcframework.zip", checksum: "50c37b8dc6d94414164364a4a8d8e4b6e00340c4f6554d9a631f056dba6c70d6"),
        .target(name: "LottieWrapper", dependencies: [.product(name: "Lottie", package: "lottie-spm")])
    ]
)
