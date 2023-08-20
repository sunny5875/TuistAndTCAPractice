//
//  GetLandMarkViewModel.swift
//  Presentation
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation
import Domain
import Data

final class GetLandMarkViewModel {
    let getLandmarkUseCase: GetLandmarkUseCase
    
    var landmarks: [LandmarkEntity] = []
    init() {
        self.getLandmarkUseCase = GetLandmarkUseCase(landmarkRepo: LandmarkRepository() as! LandmarkRepositoryProtocol)
    }
    func getLandmark() async -> [LandmarkEntity] {
        getLandmarkUseCase.execute { result in
            switch result {
            case .success(let data):
                self.landmarks = data
            case .failure:
                self.landmarks = []
            }
        }
        return []
    }
}
