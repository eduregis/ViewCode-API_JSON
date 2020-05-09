//
//  PokemonModel.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import Foundation

struct PokemonModel: Decodable {
    var id: Int
    var name: String
    var base_experience: Int
    var species: PokemonSpecies
}

struct PokemonSpecies: Decodable {
    var name: String
}

extension PokemonModel {
    init(){
        self.id = 0
        self.name = ""
        self.base_experience = 0
        self.species = PokemonSpecies()
        //self.urlImage = ""
    }
}

extension PokemonSpecies {
    init() {
        self.name = ""
    }
}

