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
            url: "https://github.com/avgx/test-vlc/releases/download/2023-05-30/TVVLCKit.xcframework.zip", 
            checksum: "e3cf63d33d6d109054307827558fb0a3aac58199b5dc0412440d04d9091506c7"
        ),
        
        .binaryTarget(
            name: "MobileVLCKit", 
            url: "https://github.com/avgx/test-vlc/releases/download/2023-05-30/MobileVLCKit.xcframework.zip", 
            checksum: "e53f36611931977e1f84c0655678689a49c75b4487fdf53cc6b5b614bb07ad01"
        ),
    ]
)
