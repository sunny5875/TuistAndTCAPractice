//
//  Network.swift
//  Domain
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation
import Alamofire
//
//protocol Networkable: AnyObject {
//    func getTodos() async -> [TodoData]
//}
//class Network {
//    func getTodos() async -> [TodoData] {
//        let url = "https://jsonplaceholder.typicode.com/todos/1"
//        let request = AF.request(url,
//                                 method: .get,
//                                 parameters: nil,
//                                 encoding: URLEncoding.default,
//                                 headers: ["Content-Type":"application/json", "Accept":"application/json"])
//            .validate(statusCode: 200..<300)
//
//
//        let result = await request.serializingDecodable([TodoData].self).result
//
//        switch result {
//        case .success(let data):
//            return data
//        case .failure(_):
//            return []
//        }
//    }
//}
//
