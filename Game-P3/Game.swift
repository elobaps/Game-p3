//
//  Game.swift
//  Game-P3
//
//  Created by Elodie-Anne Parquer on 02/04/2019.
//  Copyright © 2019 Elodie-Anne Parquer. All rights reserved.
//

import Foundation

/// main class of the game
class Game {
    
     // MARK: - Properties
    
    private var arrayTeams = [Team]() // creation of players's team array
    private var startGameDate: Date?
    
     // MARK: - Methods
    
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
        resume()
    }
    
    /* battle function : choice of a character in the attacking team and in the enemy team
    chest'discovery
    check if the character is an attacker or a mage */
    private func battle() {
        startGameDate = Date()
        print("====================================")
        print("Let's start battle !")
        print("====================================")
        repeat{
            for i in 0..<arrayTeams.count {
                arrayTeams[i].resumeTeam()
                print("===========================================")
                print("Select a character from your team :")
                let myAttacker = arrayTeams[i].characters[selectChar()-1]
                chest(target: myAttacker)
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
    
    /// bonus: calculation of the duration's game
    private func showTimer() -> String {
        guard let date = startGameDate else { return "" }
        let interval = Date().timeIntervalSince(date)
        let dateFormatter = DateComponentsFormatter()
        dateFormatter.unitsStyle = .short
        guard let timer = dateFormatter.string(from: interval) else { return "" }
        return timer
    }
    
    /// function giving the winning team
    private func getWinner() -> Team? {
        var winner:Team?
        for team in arrayTeams {
            if !team.isDead() {
                winner = team
            }
        }
        return winner
    }
    
    /// function showing the duration of the game and the winning team
    private func resume() {
        guard let winner = getWinner() else { return }
        print("The winner is: " + winner.name)
        print ("Game duration: " + showTimer() )
    }
    
    private func fight(myAttacker:Character, enemyTeam:Team) {
        enemyTeam.resumeTeam()
        let myEnemy = enemyTeam.characters[selectChar()-1]
        myAttacker.attack(target: myEnemy)
    }
    
    /// loop for character selection in battle by the user
    private func selectChar() -> Int {
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
    
    /// random chest function that allows to get a new weapon for the attacker and a new care for the magician
    private func chest(target:Character) {
        let random = Int.random(in: 0...1)
        if random == 1 {
            if target.lifePoints > 0 {
                if target is Magician {
                    print("You have just got a new weapon: Bewitching Stick !")
                    let newBonus = BewitchingStick()
                    target.weapon = newBonus
                } else {
                    print("You have just got a new weapon: Spear with 80's damage !")
                    let newBonus = Spear()
                    target.weapon = newBonus
                }
            }
        
        }
    }
    
}
