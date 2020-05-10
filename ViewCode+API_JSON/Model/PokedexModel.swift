//
//  PokedexModel.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import Foundation

struct PokedexResponse: Decodable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [PokedexCell]
}

struct PokedexCell: Decodable {
    var name: String
    var url: String
}
