//
//  TodoData.swift
//  Domain
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation

struct TodoData: Decodable {
    let completed: Int
    let id: Int
    let title: String
    let userId: Int
}
