//
//  team.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 31/03/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation



class Team {
    
    var characters = [Character]() // creation of the empty players array
    static var nameCharacters = [String]()
    var name:String = ""
    init() {
        self.name = nameTeam()
        createTeam()
    }
    
    
    // composition of the team
    func nameTeam() -> String {
        var name = ""
        repeat {
            if let data = readLine() {
                name = data
            }
        } while name == ""
        return name
    }
    
    func playerChoice() {
        print("")
        print("===============================")
        print("Choose your character !")
        print("1 - Warrior  - Life points: 100 - Damage: 10")
        print("2 - Colossus  - Life points: 120  - Damage: 5 ")
        print("3 - Magician  - Life points:  - Damage: 0 ")
        print("4 - Dwarf  - Life points:  - Damage: 20 ")
        print("===============================")
    }
    
    func onlyName() -> String  {
        var nameCharacter = String()
        repeat {
            print("Choose a name to your Character : ")
            if let data = readLine() {
                nameCharacter = data
            }
            if Team.nameCharacters.contains(nameCharacter) {
                print("Choose an other name to your Character : ")
                nameCharacter = ""
            } else {
                Team.nameCharacters.append(nameCharacter)
                print("Your name is available")
            }
        } while nameCharacter == ""
        
        return nameCharacter
    }
    
    // composition of the team
    
    
    // the player created his team by choosing 3 characters
    func createTeam()  {
        for _ in 1..<4 {
            var userChoiceTeam = 0
            repeat {
                playerChoice()   // call the function playerChoice who describe character
                if let data = readLine() {
                    if let dataToInt = Int(data) {
                        userChoiceTeam = dataToInt
                    }
                }
            } while userChoiceTeam != 1 && userChoiceTeam != 2 && userChoiceTeam != 3 && userChoiceTeam != 4
            let nameCharacter = onlyName()
            
            switch userChoiceTeam {
            case 1:
                print("You added a warrior")
                let warrior = Warrior(name:nameCharacter)
                characters.append(warrior)
            case 2:
                print("You added a colossus")
                let colossus = Colossus(name:nameCharacter)
                characters.append(colossus)
            case 3:
                print("You added a magician")
                let magician = Magician(name:nameCharacter)
                characters.append(magician)
            case 4:
                print("You added a dwarf")
                let dwarf = Dwarf(name:nameCharacter)
                characters.append(dwarf)
            default:
                return
            }
        }
    }
    
    func resumeTeam() {
        for (key, value) in characters.enumerated() {
            value.resumeCharacter(index: key+1)
        }
    }
    
    func isDead() -> Bool {
        var isAlive = true
        for character in characters {
            if character.lifePoints == 0 {
                isAlive = true
            } else {
                return false
            }
        }
            return isAlive
    }
    
}



