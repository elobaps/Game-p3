//
//  mage.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

// creation of the magician class that inherits from the character class and defines magician
class Magician:Character {
    init(name:String) {
        super.init(lifePoints: 80, nameCharacter: name, descriptionCharacter: "Mage", weapon:PhoenixFeather())
    }
    // function specific to the magician who does not have the right to attack
    override func attack(target: Character) {
        print("You don't have the permission to attack!")
    }
    
    // function that determines whether the character is alive or not and allows it to be healed by the magician
    func treat(target:Character) {
        if lifePoints > 0  {
            if target.lifePoints <= 0 {
                print("He's alrady dead !")
            } else {
                if let phoenix = target.weapon as? PhoenixFeather {
                    target.lifePoints += phoenix.magic
                      print("\(nameCharacter)  \(phoenix.magic) to your  \(target.nameCharacter)")
                }
            }
        } else {
            print("you're already dead ! You can't heal...")
        }
    }
}
