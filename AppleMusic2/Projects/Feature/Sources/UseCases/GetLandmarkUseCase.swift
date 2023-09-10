//
//  GetLandmarkUseCase.swift
//  Domain
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation

//protocol SearchMoviesUseCase {
//    func execute(
//        requestValue: SearchMoviesUseCaseRequestValue,
//        cached: @escaping (MoviesPage) -> Void,
//        completion: @escaping (Result<MoviesPage, Error>) -> Void
//    ) -> Cancellable?
//}

public class GetLandmarkUseCase {
    public let landmarkRepo: LandmarkRepositoryProtocol

    
    public init(landmarkRepo: LandmarkRepositoryProtocol){
        self.landmarkRepo = landmarkRepo
    }
    
    public func execute(completion: @escaping (Result<[LandmarkEntity], Error>) -> Void) {
        landmarkRepo.fetchLandmarks {result in
            print(result)
        }
    }
}
