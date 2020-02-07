// swift-tools-version:5.1

import PackageDescription
import Foundation

var package = Package(
    name: "FTAPIKit",
    products: [
        .library(
            name: "FTAPIKit",
            targets: ["FTAPIKit"])
    ],
    targets: [
        .target(
            name: "FTAPIKit",
            dependencies: []),
        .testTarget(
            name: "FTAPIKitTests",
            dependencies: ["FTAPIKit"])
    ]
)

var container: ObjCBool = false
FileManager.default.fileExists(atPath: "../PromiseKit", isDirectory: &container)
if container.boolValue == true {
    package.dependencies += [
        .package(url: "https://github.com/mxcl/PromiseKit", .upToNextMajor(from: "7.0.0"))
    ]
}
