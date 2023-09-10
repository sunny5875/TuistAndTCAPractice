//
//  LandmarkEntity.swift
//  Domain
//
//  Created by 현수빈 on 2023/08/20.
//
import Foundation
import SwiftUI
import CoreLocation

public struct LandmarkEntity: Hashable, Codable, Identifiable {
    public var id: Int
    public var name: String
    public var park: String
    public var state: String
    public var description: String

    public var imageName: String
    public var image: Image {
        Image(imageName)
    }

    public var coordinates: Coordinates
    public var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    public struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

