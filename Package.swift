// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "UTF8ViewExtensions",
	platforms: [.macOS(.v14)],
	products: [
		.library(
			name: "UTF8ViewExtensions",
			targets: ["UTF8ViewExtensions"]
		),
	],
	targets: [
		.target(
			name: "UTF8ViewExtensions",
			swiftSettings: [
				.enableExperimentalFeature("Embedded"),
				.unsafeFlags([
					"-whole-module-optimization",
					"-Xfrontend", "-disable-objc-interop",
					"-Xfrontend", "-disable-stack-protector",
					"-Xfrontend", "-function-sections",
					"-Xfrontend", "-gline-tables-only",
					"-Xcc", "-DTARGET_EXTENSION"
				]),
			],
		),
	],
	swiftLanguageModes: [.v6],
)
