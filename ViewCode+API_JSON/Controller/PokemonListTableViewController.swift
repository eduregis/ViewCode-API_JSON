//
//  PokemonListTableViewController.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 09/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class PokemonListTableViewController: UITableViewController {
    
    var listOfPokemons = [PokedexCell](){
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "pokedexCell")
        let pokedexRequest = PokedexRequest()
        pokedexRequest.getPokedex { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let pokedex):
                self?.listOfPokemons = pokedex
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPokemons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokedexCell", for: indexPath)
        let pokemon = listOfPokemons[indexPath.row]
        cell.textLabel?.text = pokemon.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemonView = PokemonViewController()
        let pokemonRequest = PokemonRequest(pokemonURL: listOfPokemons[indexPath.row].url)
        pokemonRequest.getPokemon { [weak pokemonView] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let pokemon):
                pokemonView?.pokemon = pokemon
            }
        }
        
        show(pokemonView, sender: self)
        // print(listOfPokemons[indexPath.row].url)
    }
}
