# Pokémon Terminal App Documentation
### [Link](https://github.com/GregM1991/pokemonApp) to source repository
---
## Software Development Plan 
### Purpose and Scope
My application is a Pokémon battling app. When you enter the program you will be greeted with a message and begin the application and choose your pokemon. 
You will then be given an opponent at random who you will battle against. You will take turns in attacking one another unt until one of you has had your pokemons health reduced to 0. 
Once the battle phase is finished. The user will then have the opportunity to battle again, or exit the program. Choosing to battle again takes you back up to choosing a pokemon, and continues from there.

The problem being solved is that of being bored. This application is used as entertainment, to be thrown into a world where pokemon exist. The reason for this applications development is to create an engaging and fun experience that immerses the user into an experience that doesn't exist in the real world.

The appliation targets a typically younger audience, but can extend to any gamer/pokemon fanatic. As there is already an established audience for the Pokémon franchise, that is who the program will cater to.

The audience will use it when free time persists or any situation where they are bored, and have access to a computer. This could include travelling, spare time at home or lunch breaks during school/uni/work.

### Features
#### 1. The user will be able to choose from a list of pokemon, with a personalised message attached
The user has the choice between the 3 starter pokemon from the original 150 Pokémon, with addition to Pikachu, because he rocks. The feature will prompt the user to choose between the 4 pokemon. Upon choosing the pokemon, that pokemon will be loaded into a variable that will be used throughout the rest of the game state.
Based on the choice of the user, a personalised message will appear unique to each pokemon.
#### 2. The user will have a choice of attacks, specific to each pokemon
The user will have a choice of 3 different attacks unique to each pokemon. Each attack is equipt with it's own stats.
#### 3. The user will have a choice to play again
Once the battle phase is over and there is a winner, the user will have the option to either play again, or exit the application. This allows the user to play many different options and combinations. If the user does not enter yes or no, he will be prompted to do so.

### User Interaction
The program opens with a title screen that reads: Pokemon. Immediately after the user is prompted to choose a pokemon and given a list to choose from. This list is generated with a gem that allows the user to move up and down the list via the arrow keys. There is no other form of input at this section.
Once a pokemon is chosen, a computer pokemon is generated and the battle begins!
The user is then told it is their turn and another list is presented to them, this time containing their chosen pokemons attack. Once again the user can only choose from the item list to progress to the next stage.
The ai will generate an attack and display, keeping track of both the ai and user pokemon. 
This process of choosing an attack and having the enemy generate an attack will continue until a pokemons health is 0.
A winner will then be displayed with a message of "you win" or "you have been defeated".
After this, the user will have the choice to play again. The user then enters yes or no, and if neither of these is entered, will be prompted again. If yes, the battle resets and the player begins again by choosing his pokemon. If no the program quits.

### Implementation Plan
#### 1. Pokemon Choice
This will be first implemented after the creation of the individual instances of the Pokemon class. It will be implemented with the gem functionality, and the choice will then load a pokemon instance into a new player_pokemon variable.

#### 2. User Choice of Attacks
This is implemented in the Pokemon object, and each attack is entered into an array as a new pokemon instance is created. Once again the gem will allow the user to choose between the options and then the choice is loaded into a current_attack variable.

#### 3. Play again choice
This comes at the end of the program. It will execute a while statement that will continue until the user enters a valid choice. Either the user will want to play again, and will restart the battle phase, or the user will enter no, which will exit the program. If anything else is entered the loop will return an error an loop back up.

### Instructions & Help
In the your terminal application, cd to the src directory in the packaged zip. Install Ruby if you do not have it installed.

The dependencies for the gems required will need to be installed, enter these commands into the terminal. 

gem install colorize
gem install tty-prompt
gem install tty-box
gem install tty-font

Once the gems are installed. Cd to the src folder and enter the command: 

ruby pokemon.rb

The program will initiate and you will be greeted by the greeting message and you will be prompted to choose your pokemon. Choose between the four pokemon listed, this will be your pokemon for the duration of this battle instance.

Once chosen, a pokemon will be generated for the ai and displayed so you can see who your vsing.

You will then have a choice of your chosen pokemons attack moves to choose from. Scroll through with the arrow keys and hit enter on the attack you want to carry out.

The enemies pokemon will take damage and be displayed on the screen for you to see, then if their health is not 0, they will carry out their own attack.
Go through this process until one of your pokemon has reached 0 health.
You will either be defeated or victorious. The screen will show you which, then you have the choice of starting another battle, or exiting.

If you choose to battle again, you will be taken to the choice of pokemon, and your game will start from there. If you choose to exit, you will be signed off with a note, and the program will quit.

=== System Requirements ===

Any computer built in the past 20 years

## Testing

The way I have designed the application has been specific to reducing the amount of user error output. In almost all cases the user can only choose from a list of input that won't throw any errors and walk the user through the program. 

### Test 1

The first test will be to choose a pokemon from the list that pops up when you are asked to choose a pokemon. You will have the choice of four different pokemon, and you will only be able to choose one.
You will be limited to the choices, and won't be able to enter anything via the keyboard, other than up and down arrows moving you through the choices available. When you click on any of the pokemon, the expected outcome will be showing a message with your choice of pokemon.

### Test 2

The Second test is to test once you've finished the battle and you're asked whether you want to battle again. You will be prompted to type yes or no. Test these two parameters, as well as test other words/symbols/characters. The expected outcome for not entering either valid inputs, is being told to enter in a valid entry.


