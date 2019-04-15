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
        print("The End...")
    }

}
