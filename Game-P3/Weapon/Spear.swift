//
//  Spear.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 16/05/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

/// creation of the class Spear that inherits the class of weapons and defines the bonus weapon of the chest for attackers
class Spear:Weapon {
    init() {
        super.init(nameWeapon: "Spear", damage: 80)
    }
}
