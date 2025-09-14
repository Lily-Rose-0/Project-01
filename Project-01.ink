/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR power = 5


-> Backstory

== Backstory ==
Before we get started you need to learn something about yourself. You are a teenager with superpowers! Bad news though your stuck in a life or death situation. -> powerselection
-> DONE

== powerselection == 
Now pick a superpower!
* [Nightmare] Make peoples nightmare come to life! -> Nroute
* [Schizophrenia] You don't actually have a superpower now. -> Sroute 
-> DONE

== Sroute == 
Why would you choose this? 
* [I don't Know] -> Sroute2
-> END

== Nroute == 
* Into the game we go! -> Nroute2
-> END 

== Sroute2 == 
How Boring. Game Over.
-> END

== Nroute2 == 
You count 5 enemies in the room. You can only cause nightmares for 2 people at once. Your crouched behind a crate. The enemis don't know where you are. Their is a window on the left and a door on your right.
* [Cause nightmares for the 2 enemies closest to you.] -> nobuff
* [Open the crate] Their is power enhancing drugs! Your current power level is {power} -> buff
-> END

== nobuff == 
The 2 enemies run out of the room in fear. A 3rd enemie chases after them to try and find out what happened. 
* [Go left to towards the window.] -> Nleft
* [Go right towards the door.] -> Nright
-> END

== buff ==
* [Take a pill] -> pilltake
-> END

== pilltake == 
~power = power + 5
* [Your power increase!] -> Bcrate
-> END

== Bcrate == 
There is a windoe to your left and a door to your right. 
* [Go left] -> Nleft2
+ [Go right] -> Nright
-> END

== Nleft2 == 
* {power > 5} [Use your power!] -> powerused
-> END

== powerused == 
You are able to take on all 5 at once! Take either exit! 
* [Back to the crate] -> Bcrate
* [The window] -> Nright
-> END

== Nleft ==
One of the enemies sees you trying to open the window. They are armed and pointing a gun at you.
* [Try using your power on them] -> N3
* [Charge them] -> C1
-> END 

== Nright == 
You are able to escape without being spotted and escape!
-> END

== N3 == 
You are able to use your power and knock them out! It ends up giving you a massive headaches, if you try using your power again you will pass out. Their is only one enemy left in the room. 
* [Leave out the window] -> Nright
* [Go after the last enemy] -> Finishthis
-> END

== C1 == 
You attempt to charge and you are killed. 
-> END

== Finishthis == 
You sneak up on the last person and are able to take them out! You secape and no one can follow you. 
-> END





