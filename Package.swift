// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
//--------------------------------------------------------------------------------------------------

import PackageDescription

//--------------------------------------------------------------------------------------------------

let package = Package (
  name: "SerialPort",
  platforms: [.macOS (.v15)],
  products: [
    .library (name: "SerialPort", targets: ["SerialPort"])
  ],
  dependencies: [
    .package (
      url: "https://github.com/pierremolinaro/Swift-Package-BinarySerialFormat",
      revision: "8b971fcee269ce7e0c1fabdd370158be8dc0de2e"
    )
  ],
  targets: [
    .target (
      name: "SerialPort",
      dependencies: [
        .product (name: "BinarySerialFormat", package: "Swift-Package-BinarySerialFormat")
      ]
    )
  ],
  swiftLanguageModes: [.v6]
)

//--------------------------------------------------------------------------------------------------
