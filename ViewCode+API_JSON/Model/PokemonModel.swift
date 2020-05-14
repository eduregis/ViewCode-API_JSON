//
//  PokemonModel.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import Foundation

struct PokemonModel: Decodable {
    var id: Int?
    var name: String?
    var base_experience: Int?
    var species: PokemonSpecies?
    var types: [PokemonType]?
    var stats: [PokemonStat]?
}

struct PokemonSpecies: Decodable {
    var name: String?
}

struct PokemonType:  Decodable {
    var type: PokemonTypeInfo?
}

struct PokemonTypeInfo: Decodable {
    var name: String?
}

struct PokemonStat: Decodable {
    var base_stat: Int?
}
