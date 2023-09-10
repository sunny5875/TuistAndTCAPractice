import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(name: "App",
                          dependencies: [
                            Module.core,
                            Module.feature,
                            Module.designSystem
                          ].map(\.project),
                          resources: .default)
