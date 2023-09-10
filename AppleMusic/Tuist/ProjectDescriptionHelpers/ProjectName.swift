//
//  ProjectName.swift
//  ProjectDescriptionHelpers
//
//  Created by 현수빈 on 2023/09/10.
//

import ProjectDescription

public enum Module {
    case app
    // 여기 저기에서 쓰이는 기능
    case core
    // 기능
    case feature
    
    // Design|UI
    case designSystem
}

extension Module {
    public var name: String {
        switch self {
        case .app:
            return "App"
        case .feature:
            return "Feature"
        case .core:
            return "Core"
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
