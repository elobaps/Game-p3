//
//  player.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

//Creation of the character class that defines each of them
class Character {
    var nameCharacter:String
    var lifePoints:Int
    var descriptionCharacter:String
    let nameWeapon:String
    let damage: Int
    init(lifePoints:Int, nameCharacter:String, descriptionCharacter: String, nameWeapon: String, damage: Int) {
        self.lifePoints = lifePoints
        self.nameCharacter = nameCharacter
        self.descriptionCharacter = descriptionCharacter
        self.nameWeapon = nameWeapon
        self.damage = damage
    }
}
