//
//  TypeView.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 08/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class TypeView: UIView {
    
    var type: PokemonTypeInfo? {
        didSet {
            self.typeName.text = self.type?.name?.uppercased()
        }
    }
    
    lazy var typeName: UILabel = {
        let name = UILabel()
    name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        name.textColor = .white
        name.textAlignment = .center
        self.addSubview(name)
        return name
    }()
    
    init () {
        super.init(frame: .zero)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5
        self.backgroundColor = colorTypeView(type: typeName.text ?? "")
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            typeName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            typeName.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            typeName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            typeName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
}
