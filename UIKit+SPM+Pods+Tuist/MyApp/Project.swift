
import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains MyApp App target and MyApp unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

*/

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
//let project = Project.app(name: "MyApp",
//                          platform: .iOS,
//                          additionalTargets: ["MyAppKit", "MyAppUI"])

// 내가 원하는 프로젝트로 변경 - 한개의 project만 생성하는 경우
let projectName = "MyApp"
let bundleID = "com.sunny.sample.MyApp"
let iOSTargetVersion = "13.0"

let project = Project(
  name: projectName,
  organizationName: "sunny",
  packages: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", .branch("master"))
  ], // SPM 사용 시 입력 ".package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0")"
  settings: nil // configuration으로 관리할 경우 아래처럼 path정보 입력
//  settings: .settings(configurations: [
//    .debug(name: "Debug", xcconfig: .relativeToRoot("Confiugrations/\(projectName)-Debog.xcconfg")),
//    .debug(name: "Release", xcconfig: "Confiugrations/\(projectName)-Release.xcconfg"),
//  ]),
  ,
  targets: [
    Target(name: projectName,
           platform: .iOS,
           product: .staticFramework, // Static Framework, Dynamic Framework
           bundleId: bundleID,
           deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: [.iphone, .ipad]),
           infoPlist: .default,
           sources: ["Targets/\(projectName)/Sources/**"],
           resources: [],
           dependencies: [// 타겟의 의존성 설정, Cocoapods, Carthage, XCFramework, Swift Package 등을 지정.
            .package(product: "Alamofire")
           ] // tuist generate할 경우 pod install이 자동으로 실행
          ),
    Target(name: "\(projectName)Tests",
           platform: .iOS,
           product: .unitTests, // Static Framework, Dynamic Framework
           bundleId: bundleID,
           deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: [.iphone, .ipad]),
           infoPlist: .default,
           sources: ["Targets/\(projectName)/Tests/**"],
           resources: [],
           dependencies: [
            .target(name: "\(projectName)")
           ]
          )
  ],
  schemes: [
    Scheme(name: "\(projectName)-Debug"),
    Scheme(name: "\(projectName)-Release")
  ],
  fileHeaderTemplate: nil,
  additionalFiles: [],
  resourceSynthesizers: []
)
                                                 
