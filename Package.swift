// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YayaSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "YayaSDK", targets: ["YAYASDK", "loyaltyModule", "billingModuleiOSYAYA"])
    ],
    targets: [
        .binaryTarget(name: "YAYASDK", url: "https://github.com/JonaRivera-RB/yaya-sdk-spm/releases/download/v2.0.0/YAYASDK.xcframework.zip", checksum: "9e2b0782e157fc7577420e30147f9470b8b3f43dc699699818abcad07bc5bc1e"),
        .binaryTarget(name: "loyaltyModule", url: "https://github.com/JonaRivera-RB/yaya-sdk-spm/releases/download/v2.0.0/loyaltyModule.xcframework.zip", checksum: "a45efeae2bf97999642e03dacf2deec3d540942877da4fa3e7d14a5dfb871c1f"),
        .binaryTarget(name: "billingModuleiOSYAYA", url: "https://github.com/JonaRivera-RB/yaya-sdk-spm/releases/download/v2.0.0/billingModuleiOSYAYA.xcframework.zip", checksum: "50c37b8dc6d94414164364a4a8d8e4b6e00340c4f6554d9a631f056dba6c70d6")
    ]
)
