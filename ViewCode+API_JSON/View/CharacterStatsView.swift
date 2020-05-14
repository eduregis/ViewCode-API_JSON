//
//  CharacterTypesView.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 08/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class CharacterStatsView: UIView {
    
    lazy var statHpView: StatView = {
        let statHp = StatView(name: "HP")
        statHp.translatesAutoresizingMaskIntoConstraints = false
        return statHp
    }()
    
    lazy var statAtkView: StatView = {
        let statAtk = StatView(name: "ATK")
        statAtk.translatesAutoresizingMaskIntoConstraints = false
        return statAtk
    }()
    
    lazy var statDefView: StatView = {
        let statDef = StatView(name: "DEF")
        statDef.translatesAutoresizingMaskIntoConstraints = false
        return statDef
    }()
    
    lazy var statSpAtkView: StatView = {
        let statSpAtk = StatView(name: "SP.ATK")
        statSpAtk.translatesAutoresizingMaskIntoConstraints = false
        return statSpAtk
    }()
    
    lazy var statSpDefView: StatView = {
        let statSpDef = StatView(name: "SP.DEF")
        statSpDef.translatesAutoresizingMaskIntoConstraints = false
        return statSpDef
    }()
    
    lazy var statSpeedView: StatView = {
        let statSpeed = StatView(name: "SPEED")
        statSpeed.translatesAutoresizingMaskIntoConstraints = false
        return statSpeed
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [statHpView, statAtkView, statDefView, statSpAtkView, statSpDefView, statSpeedView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    
    init() {
        super.init(frame: .zero)
        self.addSubview(stack)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because will not be used on IB")
    }
    
    func updateStats(stat1: PokemonStat, stat2: PokemonStat, stat3: PokemonStat, stat4: PokemonStat, stat5: PokemonStat, stat6: PokemonStat) {
        statHpView.stat = stat1
        statAtkView.stat = stat2
        statDefView.stat = stat3
        statSpAtkView.stat = stat4
        statSpDefView.stat = stat5
        statSpeedView.stat = stat6
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
        stack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
        stack.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48)
        ])
    }
}


