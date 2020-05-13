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
            print("2-)", pokemon?.name ?? "")
            testeLabel.text = pokemon?.name
            if (pokemon?.types?.count == 2){
                charTypes.updateTypes(type1: pokemon?.types?[1].type?.name ?? "", type2: "")
            } else {
                charTypes.updateTypes(type1: pokemon?.types?[0].type?.name ?? "", type2: "")
            }
           
            
            //charTypes = CharacterTypesView(type1: pokemon?.types?[0].type?.name ?? "", type2: "poison")
            // t
            // charIllustration.characterName.text = "teste"
            // charIllustrationAux = CharacterIllustrationView(image: UIImage(named: "Bulbasaur")!, backgroundImage: UIImage(named: "pokeball_bkg")!, name: pokemon?.name ?? pokemon?.name)
        }
    }
    
    lazy var testeLabel: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        name.text = "funciona disgraça"
        return name
    }()
    
    
    lazy var charIllustration: CharacterIllustrationView = {
        // chamando o construtor criado anteriormente
        let charIllustrationAux = CharacterIllustrationView(image: UIImage(named: "Bulbasaur")!, backgroundImage: UIImage(named: "pokeball_bkg")!, name: pokemon?.name ?? "bulbasaur")
        charIllustrationAux.translatesAutoresizingMaskIntoConstraints = false
        //self.view.addSubview(charIllustrationAux)
        return charIllustrationAux
    }()
    
    lazy var charTypes: CharacterTypesView = {
        let charTypesAux = CharacterTypesView(type1: "grass", type2: "poison")
        charTypesAux.translatesAutoresizingMaskIntoConstraints = false
        // view.addSubview(charTypesAux)
        return charTypesAux
    }()
    
    lazy var charStats: CharacterStatsView = {
        let charStatsAux = CharacterStatsView(hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, speed: 45)
        charStatsAux.translatesAutoresizingMaskIntoConstraints = false
        //self.view.addSubview(charStatsAux)
        return charStatsAux
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print("1-)", pokemon?.name ?? "")
        self.view.addSubview(testeLabel)
        self.view.addSubview(charIllustration)
        self.view.addSubview(charTypes)
        self.view.addSubview(charStats)
        configureLayout()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    private func configureLayout() {
        NSLayoutConstraint.activate([
            
            testeLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            testeLabel.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor),
            testeLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            testeLabel.bottomAnchor.constraint(equalTo: self.charIllustration.topAnchor),
            
            charIllustration.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            charIllustration.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor),
            //charIllustration.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            charIllustration.heightAnchor.constraint(equalTo: charIllustration.widthAnchor),
            
            charTypes.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            charTypes.topAnchor.constraint(equalTo: charIllustration.bottomAnchor, constant: -15),
            
            charStats.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            charStats.topAnchor.constraint(equalTo: charTypes.bottomAnchor, constant: 60)
        ])
    }
}

