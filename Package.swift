// swift-tools-version: 5.5

import PackageDescription

let package = Package(
  name: "BuildkiteTestCollector",
  platforms: [
    .macOS("10.15"),
    .iOS("13.0"),
    .tvOS("13.0"),
    .watchOS("6.0")
  ],
  products: [
    .library(name: "BuildkiteTestCollector", targets: ["BuildkiteTestCollector"])
  ],
  targets: [
    .target(name: "BuildkiteTestCollector", dependencies: ["BuildkiteCore", "BuildkiteLoader"]),
    .target(name: "BuildkiteCore"),
    .target(name: "BuildkiteLoader"),
    .testTarget(name: "BuildkiteTestCollectorTests", dependencies: ["BuildkiteTestCollector"]),
    .testTarget(name: "BuildkiteCoreTests", dependencies: ["BuildkiteCore"])
  ]
)
