# Game-P3

Fighter game with two teams in the debug area.

## Introduction:

The rules :

Create a team by naming it and choose three characters from the list
* create a team by naming it
* choose three characters from the list and name each of them by unique name
* play as long as your characters have life's points

Bonus :

There are two bonus :

* a method to announce the name of the winning team
* a method to show the game duration

These bonuses are displayed at game's end using this method

```
private func resume() {
    guard let winner = getWinner() else { return }
    print("The winner is: " + winner.name)
    print ("Game duration: " + showTimer() )
}
```
