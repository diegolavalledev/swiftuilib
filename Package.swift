// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "SwiftUILib",
  platforms: [ .iOS(.v13), .macOS(.v10_15) ],
  products: [
    .library(
      name: "SwiftUILib",
      targets: ["SwiftUILib"]),
  ],
  dependencies: [
    .package(name: "SwiftUILib-KeyboardSupport", url: "https://github.com/swiftuilib/keyboard-support", from: "1.0.0"),
    .package(name: "SwiftUILib-DocumentPicker", url: "https://github.com/swiftuilib/document-picker", from: "1.0.0"),
    .package(name: "SwiftUILib-WrapStack", url: "https://github.com/swiftuilib/wrap-stack", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "SwiftUILib",
      dependencies: [
        .product(name: "SwiftUILib.KeyboardSupport", package: "SwiftUILib-KeyboardSupport"),
        .product(name: "SwiftUILib.DocumentPicker", package: "SwiftUILib-DocumentPicker"),
        .product(name: "SwiftUILib.WrapStack", package: "SwiftUILib-WrapStack"),
      ],
      path: "src"),
    .testTarget(
      name: "SwiftUILibTests",
      dependencies: ["SwiftUILib"],
      path: "test"),
  ]
)
