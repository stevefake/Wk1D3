
#Blackjack Advisor program

##What does Blackjack Advisor do?

The user is asked to enter values of 2-10, or A (for "Ace"; the Jack, Queen, and King are implicitly understood to be represented by 10).

The program makes several assumptions about the blackjack game:
* it is being played with a single deck
* American Style rules are in effect
* it is played under the "S17" rule (in which the dealer stands on soft 17)
* doubling after a split is allowed
* the no surrender ruleset is in effect

##How do I run the program?
1. The program can be run from the command line
2. Player inputs should be restricted to those specifically requested by the program

##About the program code

The program uses nested hashes (i.e. hashes within hashes) to reference multi-dimensional blackjack strategy tables indicating the recommended move when given the player's initial two cards and the dealer's known card.
