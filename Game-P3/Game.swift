//
//  Game.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 02/04/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation


class Game {
    var arrayTeams = [Team]() // creation of players's team array
    
    func startGame () {
        print("Let's start !")
        for i in 0..<2{
            print("")
            print("====================================")
            print("Team \(i+1), enter your name: ")
            print("====================================")
            let team = Team()
            arrayTeams.append(team)
        }
        battle()
    }
    
    
    func battle() {
        print("====================================")
        print("Let's start battle !")
        print("====================================")
        repeat{
            for i in 0..<arrayTeams.count {
                arrayTeams[i].resumeTeam()
                print("===========================================")
                print("Select a character from your team :")
                let myAttacker = arrayTeams[i].characters[selectChar()-1]
                if let magician = myAttacker as? Magician {
                    print("===========================================")
                    print("Select a character from your team to treat him :")
                    arrayTeams[i].resumeTeam()
                    magician.treat(target: arrayTeams[i].characters[selectChar()-1])
                } else {
                    print("===========================================")
                    print("Select your enemy !")
                    if i == 0 {
                        let myEnemy = arrayTeams[i+1]
                        fight(myAttacker: myAttacker, enemyTeam: myEnemy)
                        if myEnemy.isDead() {
                            return
                        }
                    } else {
                        let myEnemy = arrayTeams[i-1]
                        fight(myAttacker: myAttacker, enemyTeam: myEnemy)
                        if myEnemy.isDead() {
                            return
                        }
                    }
                }
            
            }
        } while true
    }
    
    func fight(myAttacker:Character, enemyTeam:Team) {
        enemyTeam.resumeTeam()
        let myEnemy = enemyTeam.characters[selectChar()-1]
        myAttacker.attack(target: myEnemy)
    }
    
    func selectChar() -> Int {
        var userChoiceChar = 0
        repeat{
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoiceChar = dataToInt
                }
            }
        } while  userChoiceChar != 1 &&  userChoiceChar != 2 &&  userChoiceChar != 3
        return userChoiceChar
    }
    
}
