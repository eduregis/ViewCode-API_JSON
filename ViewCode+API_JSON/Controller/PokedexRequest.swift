//
//  PokedexRequest.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import Foundation


enum PokemonError: Error {
    case noDataAvailable
    case canNotProcessData
}

struct PokemonRequest {
    let resourceURL: URL

    init (pokemonCode: String){
        let resourceString = "https://pokeapi.co/api/v2/pokemon/\(pokemonCode)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func getPokemon (completion: @escaping(Result<PokemonModel, PokemonError>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, _, _ in
            guard let jsonData = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            do {
                let decoder = JSONDecoder()
                let pokemonResponse = try decoder.decode(PokemonModel.self, from: jsonData)
                completion(.success(pokemonResponse))
            } catch {
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
}
