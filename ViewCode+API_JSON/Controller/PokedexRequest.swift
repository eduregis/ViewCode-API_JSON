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

struct PokedexRequest {
    let resourceURL: URL
    
    init() {
        let resourceString = "https://pokeapi.co/api/v2/pokemon/"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        self.resourceURL = resourceURL
    }
    
    func getPokedex (completion: @escaping(Result<[PokedexCell], PokemonError>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, _, _ in
            guard let jsonData = data else {
                DispatchQueue.main.async {
                    completion(.failure(.noDataAvailable))
                }
                return
            }
            do {
                let decoder = JSONDecoder()
                let pokedexResponse = try decoder.decode(PokedexResponse.self, from: jsonData)
                let pokemonList = pokedexResponse.results
                DispatchQueue.main.async {
                    completion(.success(pokemonList))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(.canNotProcessData))
                }
            }
        }
        dataTask.resume()
    }
}

struct PokemonRequest {
    let resourceURL: URL

    init (pokemonURL: String){
        let resourceString = pokemonURL
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        self.resourceURL = resourceURL
    }
    
    func getPokemon (completion: @escaping(Result<PokemonModel, PokemonError>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, _, _ in
            guard let jsonData = data else {
                DispatchQueue.main.async {
                    completion(.failure(.noDataAvailable))
                }
                
                return
            }
            do {
                let decoder = JSONDecoder()
                let pokemonResponse = try decoder.decode(PokemonModel.self, from: jsonData)
                DispatchQueue.main.async {
                    completion(.success(pokemonResponse))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(.canNotProcessData))
                }
            }
        }
        dataTask.resume()
    }
}
