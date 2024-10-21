// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "VLCKitSPM",
    platforms: [.iOS(.v15), .tvOS(.v15)],
    products: [
        .library(name: "TVVLCKit", targets: ["TVVLCKit"]),
        .library(name: "MobileVLCKit", targets: ["MobileVLCKit"]),
        .library(name: "VLCKitSPM", targets: ["VLCKitSPM"]),
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

        .binaryTarget(
            name: "VLCKit-all", 
            url: "https://github.com/avgx/test-vlc/releases/download/2024-10-21/VLCKit-all.xcframework.zip", 
            checksum: "7e448ebb132e204d62f3b0db488dc3a1bb1c42ced34c16b4275ef7c6971e3348"
        ),
        .target(
            name: "VLCKitSPM",
            dependencies: [
                .target(name: "VLCKit-all")
            ], linkerSettings: [
                .linkedFramework("QuartzCore", .when(platforms: [.iOS])),
                .linkedFramework("CoreText", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("AVFoundation", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("Security", .when(platforms: [.iOS])),
                .linkedFramework("CFNetwork", .when(platforms: [.iOS])),
                .linkedFramework("AudioToolbox", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("OpenGLES", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
                .linkedFramework("VideoToolbox", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreMedia", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("c++", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("xml2", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("z", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("bz2", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("iconv")
            ]),
    ]
)
