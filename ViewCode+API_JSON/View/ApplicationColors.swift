//
//  ApplicationColors.swift
//  ViewCode+API_JSON
//
//  Created by Eduardo Oliveira on 08/05/20.
//  Copyright © 2020 Eduardo Oliveira. All rights reserved.
//

import UIKit

extension UIColor {
    static var normalBeige: UIColor { return UIColor(displayP3Red: 142/255, green: 210/255, blue: 116/255, alpha: 1)
    }
    static var fireRed: UIColor { return UIColor(displayP3Red: 252/255, green: 70/255, blue: 47/255, alpha: 1)
    }
    static var waterBlue: UIColor { return UIColor(displayP3Red: 142/255, green: 210/255, blue: 116/255, alpha: 1)
    }
    static var electricYellow: UIColor { return UIColor(displayP3Red: 142/255, green: 210/255, blue: 116/255, alpha: 1)
    }
    static var leafGreen: UIColor { return UIColor(displayP3Red: 142/255, green: 210/255, blue: 116/255, alpha: 1)
    }
    static var iceCyan: UIColor { return UIColor(displayP3Red: 129/255, green: 212/255, blue: 253/255, alpha: 1)
    }
    static var fightingBrown: UIColor { return UIColor(displayP3Red: 195/255, green: 110/255, blue: 98/255, alpha: 1)
    }
    static var poisonPurple: UIColor { return UIColor(displayP3Red: 182/255, green: 112/255, blue: 167/255, alpha: 1)
    }
    static var groundGolden: UIColor { return UIColor(displayP3Red: 225/255, green: 196/255, blue: 117/255, alpha: 1)
    }
    static var flyingBlue: UIColor { return UIColor(displayP3Red: 155/255, green: 171/255, blue: 252/255, alpha: 1)
    }
    static var psychicMagenta: UIColor { return UIColor(displayP3Red: 252/255, green: 113/255, blue: 168/255, alpha: 1)
    }
    static var bugGreen: UIColor { return UIColor(displayP3Red: 169/255, green: 187/255, blue: 56/255, alpha: 1)
    }
    static var rockWheat: UIColor { return UIColor(displayP3Red: 182/255, green: 167/255, blue: 103/255, alpha: 1)
    }
    static var ghostNavy: UIColor { return UIColor(displayP3Red: 105/255, green: 103/255, blue: 184/255, alpha: 1)
    }
    static var dragonPurple: UIColor { return UIColor(displayP3Red: 119/255, green: 99/255, blue: 237/255, alpha: 1)
    }
    static var darkBronze: UIColor { return UIColor(displayP3Red: 119/255, green: 91/255, blue: 77/255, alpha: 1)
    }
    static var steelSilver: UIColor { return UIColor(displayP3Red: 166/255, green: 165/255, blue: 183/255, alpha: 1)
    }
    static var fairyPink: UIColor { return UIColor(displayP3Red: 235/255, green: 146/255, blue: 236/255, alpha: 1)
    }
    
    static var statRed: UIColor { return UIColor(displayP3Red: 253/255, green: 105/255, blue: 15/255, alpha: 1)
    }
    static var statYellow: UIColor { return UIColor(displayP3Red: 254/255, green: 216/255, blue: 70/255, alpha: 1)
    }
    static var statGreen: UIColor { return UIColor(displayP3Red: 146/255, green: 228/255, blue: 19/255, alpha: 1)
    }
}

func colorTypeView (type: String) -> UIColor {
    switch type {
    case "normal":
        return .normalBeige
    case "fire":
        return .fireRed
    case "water":
        return .waterBlue
    case "electric":
        return .electricYellow
    case "grass":
        return .leafGreen
    case "ice":
        return .iceCyan
    case "fighting":
        return .fightingBrown
    case "poison":
        return .poisonPurple
    case "ground":
        return .groundGolden
    case "flying":
        return .flyingBlue
    case "psychic":
        return .psychicMagenta
    case "bug":
        return .bugGreen
    case "rock":
        return .rockWheat
    case "ghost":
        return .ghostNavy
    case "dragon":
        return .dragonPurple
    case "dark":
        return .darkBronze
    case "steel":
        return .steelSilver
    case "fairy":
        return .fairyPink
    default:
        return .black
    }
}
