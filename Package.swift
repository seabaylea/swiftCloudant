
import PackageDescription

let package = Package(
    name: "swiftCloudant",
    targets: [
        Target(name: "swiftCloudant", dependencies: [ .Target(name: "Generated") ]),
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/IBM-Swift/GeneratedSwiftServer.git", majorVersion: 0, minor: 4),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/IBM-Swift/GeneratedSwiftServer-CloudantStore.git", majorVersion: 0, minor: 4),
    ]
)