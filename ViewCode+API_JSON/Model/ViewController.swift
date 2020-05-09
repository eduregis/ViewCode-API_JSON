//
//  ViewController.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pokemon: PokemonModel = PokemonModel() {
        didSet {
            print("1 -) \(pokemon.name)")
        }
    }
    
    lazy var charIllustration: CharacterIllustrationView = {
        // chamando o construtor criado anteriormente
        let charIllustrationAux = CharacterIllustrationView(image: UIImage(named: "Bulbasaur")!, backgroundImage: UIImage(named: "pokeball_bkg")!, name: "Bulbasaur")
        charIllustrationAux.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(charIllustrationAux)
        return charIllustrationAux
    }()
    
    lazy var charTypes: CharacterTypesView = {
        let charTypesAux = CharacterTypesView(type1: "grass", type2: "poison")
        charTypesAux.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(charTypesAux)
        return charTypesAux
    }()
    
    lazy var charStats: CharacterStatsView = {
        let charStatsAux = CharacterStatsView(hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, speed: 45)
        charStatsAux.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(charStatsAux)
        return charStatsAux
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let pokemonRequest = PokemonRequest(pokemonCode: "1")
        pokemonRequest.getPokemon { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let pokemon):
                self?.pokemon = pokemon
                print("2 -) \(self!.pokemon.name)")
            }
        }
        print("3 -) \(pokemon.name)")
        configureLayout()
    }
    

    private func configureLayout() {
        NSLayoutConstraint.activate([
            charIllustration.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            charIllustration.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor),
            charIllustration.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            charIllustration.heightAnchor.constraint(equalTo: charIllustration.widthAnchor),
            charTypes.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            charTypes.topAnchor.constraint(equalTo: charIllustration.bottomAnchor, constant: -15),
            charStats.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            charStats.topAnchor.constraint(equalTo: charTypes.bottomAnchor, constant: 60)
        ])
    }
}

