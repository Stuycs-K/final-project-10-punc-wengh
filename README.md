# APCS Final Project
THIS DOCUMENT IS REQUIRED
## Group Info
Group Name: WEN no PUN was intended
Members: Calvin Pun, Hui Wen Weng
## Overview
The final project of our team will be based on Monopoly. We aim to recreate a slightly simplified version of the Monopoly game in Processing using Java. The game may be played by two players. The goal of the game is to emerge as the player with the most net worth, calculated based on each player's cash balance and their property worth; once a player has less than or equal to $0 in their balance, the game automatically terminates and the program will calculate each player's assets to determine the winner. An "End Game" option is also available for an early termination of the game; a winner will be determined regardless of whether the "End Game" option was used or not. The game will be playable on a single device; the program will be able to cycle through players. Upon a “Roll Die” the two dice will roll and the current will be moved automatically, after which the player will be presented with options, such as "Buy," "Pay Fine," and "Use Jail Card," on the screen based on the location that the player lands on. Players must indicate the end of their turn using the "End Turn" option.
## Instructions
Note: Before playing, please install the sound files by going to Sketch > Import Library > Manage Libraries > in the search bar "Sound" > install "Sound" by The Processing Foundation
### Opening the Game
1. Open the file folder in Processing and click the "Run" button
2. You will be greeted with a starting screen, press "Start" to enter the game and view the game board
3. Decide on who's player 1 and who's player 2; player 1 will always begin the game
### Playing the Game
1. Player information are presented on the top right half of the window, and player commands/options are presented on the bottom right half of the window
2. Click on "Roll Die" to move your token
3. If you landed on a purchasable location, you will be present with a "Buy" option; the value of the location will be automatically withdrawn from your balance once you click on the option
4. If you landed on a card (Chance or Community Chest), you will see the card information displayed on the right, and the actions of the card will be automated
5. If you landed on "Go To Jail," you will automatically be sent to jail, and you will subsequently be provided with the options of rolling a double, paying a fine, or using a Get Out of Jail card (if you have one) to get out of jail
7. Click on "End Turn" to switch the turn to the next player 
### Ending the Game
* You have the option to terminate the game early by clicking the "End Game" option on the upper right hand corner of the window
* If any player's balance falls below 0, the game will automatically end
* Regardless of whether the "End Game" option was chosen, the end screen will display the winner of the game based on the calculated net worth (balance + property worth) of each player
* Press "Menu" to start another game
