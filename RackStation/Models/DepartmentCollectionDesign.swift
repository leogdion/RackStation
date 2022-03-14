//
//  DepartmentCollectionDesign.swift
//  RackStation
//
//  Created by Leo Dion on 3/9/22.
//

import Foundation

struct DepartmentCollectionDesign: Codable, Randomizable {
    let departments: [DepartmentDesign]

    static func random(withCount count: Int = .random(in: 5 ... 9)) -> DepartmentCollectionDesign {
        .init(departments: .init(factory: DepartmentDesign.random, count: count))
    }

    func randomize() -> DepartmentCollectionDesign {
        .init(departments: departments.randomize())
    }
}
