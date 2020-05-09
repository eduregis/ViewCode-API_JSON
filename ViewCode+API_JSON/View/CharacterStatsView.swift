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
        let statHp = StatView(name: "HP", value: 45)
        statHp.translatesAutoresizingMaskIntoConstraints = false
        return statHp
    }()
    
    lazy var statAtkView: StatView = {
        let statAtk = StatView(name: "ATK", value: 49)
        statAtk.translatesAutoresizingMaskIntoConstraints = false
        return statAtk
    }()
    
    lazy var statDefView: StatView = {
        let statDef = StatView(name: "DEF", value: 49)
        statDef.translatesAutoresizingMaskIntoConstraints = false
        return statDef
    }()
    
    lazy var statSpAtkView: StatView = {
        let statSpAtk = StatView(name: "SP.ATK", value: 65)
        statSpAtk.translatesAutoresizingMaskIntoConstraints = false
        return statSpAtk
    }()
    
    lazy var statSpDefView: StatView = {
        let statSpDef = StatView(name: "SP.DEF", value: 65)
        statSpDef.translatesAutoresizingMaskIntoConstraints = false
        return statSpDef
    }()
    
    lazy var statSpeedView: StatView = {
        let statSpeed = StatView(name: "SPEED", value: 45)
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
        self.addSubview(stack)
        return stack
    }()
    
    init(hp: Int, atk: Int, def: Int, spatk: Int, spdef: Int, speed: Int) {
        super.init(frame: .zero)
//        statHpView.statName.text = "HP"
//        statHpView.statValue.text = "\(hp)"
//        statAtkView.statName.text = "ATK"
//        statAtkView.statValue.text = "\(atk)"
//        statDefView.statName.text = "DEF"
//        statDefView.statValue.text = "\(def)"
//        statSpAtkView.statName.text = "SP.ATK"
//        statSpAtkView.statValue.text = "\(spatk)"
//        statSpDefView.statName.text = "SP.DEF"
//        statSpDefView.statValue.text = "\(spdef)"
//        statSpeedView.statName.text = "SPEED"
//        statSpeedView.statValue.text = "\(speed)"
        
//        statHpView = StatView(name: "HP", value: hp)
//        statAtkView = StatView(name: "ATTACK", value: atk)
//        statDefView = StatView(name: "DEFENSE", value: def)
//        statSpAtkView = StatView(name: "SP. ATK", value: spatk)
//        statSpDefView = StatView(name: "SP. DEF", value: spdef)
//        statSpeedView = StatView(name: "SPEED", value: speed)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because will not be used on IB")
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
        stack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
        stack.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48)
        ])
    }
}


