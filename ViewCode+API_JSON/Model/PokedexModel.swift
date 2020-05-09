//
//  PokedexModel.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import Foundation

struct PokedexModel: Decodable {
    let count: Int
    let next: String
    let previous: String
    let results: Int
}
extension PokedexModel {
    init() {
        self.count = 0
        self.next = ""
        self.previous = ""
        self.results = 0
    }
}
