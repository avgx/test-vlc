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
            url: "https://github.com/avgx/test-vlc/releases/download/2022-08-19/TVVLCKit.xcframework.zip", 
            checksum: "afacb1b21337dd62c6de97ae70fd91d950a43a87f9b77f6eb454e426aed54b83"
        ),
        
        .binaryTarget(
            name: "MobileVLCKit", 
            url: "https://github.com/avgx/test-vlc/releases/download/2022-08-19/MobileVLCKit.xcframework.zip", 
            checksum: "a4283eeb943634db52663918181dba2261dbf10903216ff6c1699b96c59477cf"
        ),
    ]
)
