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
    let nameCharacter:String
    var lifePoints:Int
    let descriptionCharacter:String
    var weapon:Weapon
    init(lifePoints:Int, nameCharacter:String, descriptionCharacter: String, weapon:Weapon) {
        self.lifePoints = lifePoints
        self.nameCharacter = nameCharacter
        self.descriptionCharacter = descriptionCharacter
        self.weapon = weapon
    }
    
    func resumeCharacter(index: Int) {
        print("\(index) : " + nameCharacter + " - \(lifePoints) points de vie - \(weapon.damage) points de dégats - " + descriptionCharacter)
    }
    
    func attack(target:Character) {
        if lifePoints > 0  {
            if target.lifePoints <= 0 {
                print("He's alrady dead !")
            } else {
                target.lifePoints -= weapon.damage
                if target.lifePoints <= 0 {
                    target.lifePoints = 0
                }
                print("\(nameCharacter) inflicted \(weapon.damage) to your enemy \(target.nameCharacter)")
            }
        } else {
            print("you're already dead ! You can't attack your enemy...")
        }
    }
    
}
