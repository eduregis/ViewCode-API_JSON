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
        let type1 = TypeView(name: "grass")
        type1.translatesAutoresizingMaskIntoConstraints = false
        return type1
    }()
    
    lazy var type2View: TypeView = {
        let type2 = TypeView(name: "poison")
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
        self.addSubview(stack)
        return stack
    }()
    
    init(type1: String, type2: String = "") {
        super.init(frame: .zero)
//        type1View.typeName.text = type1
//        type2View.typeName.text = type2
        configureLayout()
    }
    
    func updateTypes(type1: String, type2: String) {
        type1View.typeName.text = type1
        type2View.typeName.text = type2
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


