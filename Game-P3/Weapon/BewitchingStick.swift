//
//  BewitchingStick.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 15/05/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

// creation of the class BetwitchStick that inherits the class of weapons and defines the bonus care of the chest for magician
class BewitchingStick:Weapon {
    let magic:Int = 50
    init(){
        super.init(nameWeapon: "Bewitch Stick", damage: 0)
    }
}
