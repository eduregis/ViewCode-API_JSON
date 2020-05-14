//
//  CharacterTypesView.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 08/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class CharacterTypesView: UIView {
    
    lazy var type1View: TypeView = {
        let type1 = TypeView()
        type1.translatesAutoresizingMaskIntoConstraints = false
        return type1
    }()
    
    lazy var type2View: TypeView = {
        let type2 = TypeView()
        type2.translatesAutoresizingMaskIntoConstraints = false
        return type2
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [type1View, type2View])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 10
        
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
    
    func updateTypes(type1: PokemonType, type2: PokemonType? = nil) {
        type1View.type = type1.type
        if let type2Aux = type2 {
            type2View.type = type2Aux.type
            type2View.isHidden = false
        } else {
            type2View.isHidden = true
        }
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            stack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
            stack.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48)
        ])
    }
}


