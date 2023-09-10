//
//  LandmarkRepository.swift
//  Domain
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation

protocol Cancellable {
    func cancel()
}



public protocol LandmarkRepositoryProtocol {
    @discardableResult
    func fetchLandmarks(
        completion: @escaping (Result<[LandmarkEntity], Error>) -> Void
    ) -> Cancellable?
}
