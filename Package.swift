// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "VLCKit",
    products: [
        .library(name: "TVVLCKit", targets: ["TVVLCKit"]),
        .library(name: "MobileVLCKit", targets: ["MobileVLCKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "TVVLCKit", 
            url: "https://github.com/avgx/test-vlc/releases/download/2023-12-21/TVVLCKit.xcframework.zip", 
            checksum: "0ef587155f998c8db9e6ccaddb0b068cbc3844900485a9e2ea3efaef8b10e674"
        ),
        
        .binaryTarget(
            name: "MobileVLCKit", 
            url: "https://github.com/avgx/test-vlc/releases/download/2024-01-11/MobileVLCKit.xcframework.zip", 
            checksum: "3f2848a2a67375d08144f823561441df528f55203145ca93cfae27029c77d346"
        ),
    ]
)
