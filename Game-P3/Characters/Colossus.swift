//
//  colosse.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

/// creation of the colossus class that inherits from the character class and defines colossus 
class Colossus:Character {
    init(name:String) {
        super.init(lifePoints: 120, nameCharacter: name, descriptionCharacter: "Colosse", weapon:Ax())
    }
}
