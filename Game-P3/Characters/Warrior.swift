//
//  combattant.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation


//Creation of the warrior class that inherits from the character class and defines warrior

class Warrior:Character {
    init(name:String) {
        super.init(lifePoints: 100, nameCharacter: name, descriptionCharacter: "Combattant", nameWeapon: "excalibur", damage: 10)
    }
}
