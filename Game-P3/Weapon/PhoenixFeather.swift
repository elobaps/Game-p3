//
//  PhoenixFeather.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 07/05/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

/// creation of the class Phoenix Feather that inherits the class of weapons and defines the care for the magician
class PhoenixFeather:Weapon {
    let magic:Int = 20
    init(){
        super.init(nameWeapon: "Phoenix feather", damage: 0)
    }
}
