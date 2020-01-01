//
//  nain.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

/// creation of the dwarf class that inherits from the character class and defines dwarf 
class Dwarf:Character {
    init(name:String) {
        super.init(lifePoints: 60, nameCharacter: name, descriptionCharacter: "Nain", weapon:Crossbrow())
    }
}
