//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 현수빈 on 2023/09/10.
//
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(name: Module.app.name,
                          dependencies: [
                            Module.designSystem,
                            Module.core,
                            Module.feature
                          ].map(\.project),
                          resources: .default)
