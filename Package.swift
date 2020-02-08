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

#if FTAPIKit_Promise
package.dependencies += [
    .package(url: "https://github.com/mxcl/PromiseKit", .upToNextMajor(from: "6.0.0"))
]
package.targets[0].dependencies.append(.target(name: "PromiseKit"))
#endif
