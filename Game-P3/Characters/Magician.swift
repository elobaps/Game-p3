//
//  mage.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

//Creation of the magician class that inherits from the character class and defines magician

class Magician:Character {
    init(name:String) {
        super.init(lifePoints: 80, nameCharacter: name, descriptionCharacter: "Mage", nameWeapon: "phoenix feather", damage: 0)
    }
}
