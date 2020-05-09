//
//  CharacterIllustrationView.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 06/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

class CharacterIllustrationView: UIView {
    lazy var backgroundView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = false
        image.alpha = 0.2
        self.addSubview(image)
        return image
    }()
    
    lazy var characterImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = false
        self.addSubview(image)
        return image
    }()
    
    lazy var characterName: UILabel = {
        let name = UILabel()
    name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        // name.textColor = .fireRed
        self.addSubview(name)
        return name
    }()
    
    init (image: UIImage, backgroundImage: UIImage, name: String) {
        // chamamos o init padrão da view. Iniciamos com o frame 0 para ele se ajustar as constraints
        super.init(frame: .zero)
        backgroundView.image = backgroundImage
        characterImage.image = image
        characterName.text = name
        // função que ajustará o layout
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        // Dara esse erro caso se tente usar esse componente numa storyboard
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            backgroundView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 32),
            backgroundView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -32),
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            backgroundView.heightAnchor.constraint(equalTo: backgroundView.widthAnchor),
            
            characterImage.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            characterImage.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            characterImage.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.8),
            characterImage.heightAnchor.constraint(equalTo: backgroundView.heightAnchor, multiplier: 0.8),
            
            
            characterName.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            characterName.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: -22)
        ])
    }


}
