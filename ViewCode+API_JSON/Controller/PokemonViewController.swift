//
//  ViewController.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {

    var pokemon: PokemonModel? {
        didSet {
            charIllustration.updateCharIllustrationView(characterName: pokemon!.name!)
            
            if (pokemon?.types?.count == 2){
                charTypes.updateTypes(type1: (pokemon?.types?[1])!, type2: (pokemon?.types?[0])!)
            } else {
                charTypes.updateTypes(type1: (pokemon?.types?[0])!)
            }
            
            charStats.updateStats(stat1: (pokemon?.stats?[5])!, stat2: (pokemon?.stats?[4])!, stat3: (pokemon?.stats?[3])!, stat4: (pokemon?.stats?[2])!, stat5: (pokemon?.stats?[1])!, stat6: (pokemon?.stats?[0])!)
        }
    }
    
    lazy var charIllustration: CharacterIllustrationView = {
        let charIllustrationAux = CharacterIllustrationView(image: UIImage(named: "Bulbasaur")!, backgroundImage: UIImage(named: "pokeball_bkg")!)
        charIllustrationAux.translatesAutoresizingMaskIntoConstraints = false
        return charIllustrationAux
    }()
    
    lazy var charTypes: CharacterTypesView = {
        let charTypesAux = CharacterTypesView()
        charTypesAux.translatesAutoresizingMaskIntoConstraints = false
        return charTypesAux
    }()
    
    lazy var charStats: CharacterStatsView = {
        let charStatsAux = CharacterStatsView()
        charStatsAux.translatesAutoresizingMaskIntoConstraints = false
        return charStatsAux
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(charIllustration)
        self.view.addSubview(charTypes)
        self.view.addSubview(charStats)
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

