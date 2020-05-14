//
//  StatView.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 08/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class StatView: UIView {
    
    var stat: PokemonStat? {
        didSet {
            if let statAux = self.stat?.base_stat {
                print(statAux)
                self.statValue.text = "\(statAux)"
                if (statAux < 60) {
                    statValue.textColor = .statRed
                } else if (statAux < 90) {
                    statValue.textColor = .statYellow
                } else {
                    statValue.textColor = .statGreen
                }
            }
        }
    }
    
    lazy var statName: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        name.textAlignment = .center
        self.addSubview(name)
        return name
    }()

    lazy var statValue: UILabel = {
        let value = UILabel()
        value.translatesAutoresizingMaskIntoConstraints = false
        value.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        value.textAlignment = .center
        self.addSubview(value)
        return value
    }()

    init (name: String) {
        super.init(frame: .zero)
        statName.text = name.uppercased()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            statName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5),
            statName.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5),
            statName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            statName.bottomAnchor.constraint(equalTo: statValue.topAnchor, constant: -10),
            statName.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            statValue.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            statValue.bottomAnchor.constraint(lessThanOrEqualTo: self.bottomAnchor, constant: -5)
        ])
    }
    
}

