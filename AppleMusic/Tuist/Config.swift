import ProjectDescription

//let config = Config(
//    plugins: [
//        .local(path: .relativeToManifest("../../Plugins/AppleMusic")),
//    ]
//)

let config = Config(
    compatibleXcodeVersions: .all,
    swiftVersion: "5.0",
    generationOptions: .options()
)
