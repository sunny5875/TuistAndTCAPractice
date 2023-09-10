//
//  ProjectName.swift
//  ProjectDescriptionHelpers
//
//  Created by cheonsong on 2022/09/02.
//

import ProjectDescription

public enum Module {
    case app
    case core
    case feature
    case designSystem
}

extension Module {
    public var name: String {
        switch self {
        case .app:
            return "App"
        case .core:
            return "Core"
        case .feature:
            return "Feature"
        case .designSystem:
            return "DesignSystem"
        }
    }
    
    public var path: ProjectDescription.Path {
        return .relativeToRoot("Projects/" + self.name)
    }
    
    public var project: TargetDependency {
        return .project(target: self.name, path: self.path)
    }
}

extension Module: CaseIterable { }
