//
//  Weapon.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 04/05/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

// creation of the weapon class that defines each of them
class Weapon {
    let nameWeapon:String
    let damage: Int
    init(nameWeapon:String, damage:Int) {
        self.nameWeapon = nameWeapon
        self.damage = damage
    }
}
