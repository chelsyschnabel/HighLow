This file is also provided as an interactive Jupyter Notebook. This is a Markdown version of the same document.

---
title: "Loops and Conditions with the High Low Game"

author: "Chelsy Schnabel"

output: Markdown Document

date: "2026-10-29"

---

## Required Materials
A deck of cards, numbered 1-9, for each student. Different distinct colors for each deck can help visually.
A computer with access to Python for each student.

## Prior Knowledge
Prior to this lesson, we have explored some of the basics of Python, including mathematical computations as well as creating and manipulating variables. In the introduction, we have discussed the sequence of code and how reassigning objects later erases earlier memory. From there, we have discussed functions, both user-created and built-in as well as those with and without parameters.

## Purpose of Lesson
The purpose of this lesson, which is broken into multiple days, is to introduce students to the other two programming structures: selection and iteration. The start of the lesson will focus on selection, then we will grow the process to include iteration as well. This also reinforces a concept that was discussed in the introduction, but not witnessed so much: nesting.

## Introduction
The start of the lesson will need the students to break into pairs. Each student will need a deck of cards with the numbers 1-9 on them. They should each shuffle their deck before playing the game High Low.

To play the game, one person will flip a card over first to reveal their card. The other person will guess as to whether they think their card will be higher or lower prior to flipping their card. If they guessed right, they win. If they were wrong, they lose.

Students should play several rounds of this game, taking turns as to who reveals first versus who is guessing.

After about 5 minutes or so of playing this version, we can then discuss how we would structure this code for a single round. They should keep their cards so that they can hold them and potentially play through the game, step-by-step, as we build the code.

## Single Round Discussion
The discussion first starts with creating the atmosphere and what we need. For instance, now that we're going to involve the computer for programming our game, we need to decide whether we have two people playing the game or if the game is computer versus player. The code sample I have provided to see this game is computer (dealer) versus player (guesser).

We first need to decide how to get the card values for each the player and the computer. Functions for generating a random number are not built into Python, so we will need to import the `random` library. At the start of our code, we will

```
import random
```

This allows us to use functions within the random library. In particular, the `randint` function allows us to ask for a random integer in a specified range. For instance,

```
random.randint(1, 10)
```

will provide us with a random integer from 1 up to, but not including 10. Notice that this function call looks different than it does for our built-in functions: this is because we've imported the library, but didn't really open it and tell our computer which things we need from it. By specifying `random` with a . before the function call, it lets the computer know that it needs to look in that library for the function.

Alternatively, if we know for sure which function we want to use, we could import it in this fashion.

```
from random import randint
```

This tells the computer to open the random library and specifically read and understand the randint function. We can then call upon it like a normal built-in function for that file (e.g. `randint(1,10)`). 

Then we consider how to get data from the user. This is another opportunity for us to expand on built-in functions and explore `input()`. We can also utilize this time to re-explore data types in R, discussing that the computer may not necessarily convert the user's input to the lowest data type. For example, if the user enters a 1, it may still consider this a character as opposed to reducing it to its integer format. I further this by discussing how we can force a data type on an object, so long as it's valid (for example, forcing "1"  to be an integer as opposed to a character string works, but forcing "a" to be an integer won't work).

We now get to explore our new topic of conditions so that the computer can determine whether the user guessed right or wrong. We explore if and else specifically in this example, but consider other structures such as the need for else if or cases where an alternative isn't necessary. We also discuss the efficiency of utilizing if and else as opposed to two separate ifs, breaking it down as if we were a five-year-old chef following a recipe down to the finest detail.

Once we have the code finalized, we then follow the lines step-by-step with the cards in hand, playing through the game without running the code, to ensure we understand how it works and determine if any pieces are missing. We then run the code in the console to ensure that there are no bugs, such as intention errors or missing colons (as this is going to become a more likely issue now that we're expanding to have more and more of them) or parenthesis (which they've likely already experienced at least once by a genuine mistake, not just viewing the mistake or being given the prompt).

NOTE: I have expanded my code into the highLowCode.py file to follow my suggestions. The code should look like the highLowRound function and have the global variables as well (except roundTracker)

```
highLowRound()
```

## Multiple Rounds Discussion
Now that we have code working for a single round of the game, we can consider how to make this game run for multiple rounds. For this, we need to discuss the various options for loops.

One option is the for-loop. For-loops are best used when we know how many times we are repeating the process. For instance, if we want to play the game 3 times or if the user specifies a specific number of times (i.e. they give us a number to use). This is one way we can consider structuring this game.

My code provided utilizes the other option though, which is a while-loop. Again, I note for my students with Python experience that this is similar to how they work in Python, but still elaborate more for those without programming experience. I note that while-loops are more flexible than for-loops in that we don't need to know how many times we want to repeat the process. However, unless we tell the computer to stop repeating the process, it will continue forever! Thus, it's better to only utilize while-loops when we're not sure how many times we're repeating (for example, we want a prompt to just ask something like "do you want to play again?" at the end of each round, and stop when they answer anything that isn't "yes").

For this code, we can write with either loop version. Though the code I have provided utilizes a while-loop, I like to write two versions: one with a for-loop in which the user specifies how many times they want to play the game prior to starting and one with a while-loop like my sample code does.

Below runs the code utilizing a for-loop. In this version, I determined the player is to play four times. I utilize additional discussions/assessment for adjusting this to allow the player to specify how many rounds as well as a way to keep track of the score. Be sure to note that a for-loop runs up until it reaches the last value, so for it to run four times, I have `for i in range(3)` so that it runs 3 times. 

Note: how it works is that it starts with `i=0`, then again for `i=1`, then again for `i=2`, but once `i=3`, it will stop.

```
highLowForLoop()
```

This code, as opposed to the above version, utilizes a while-loop and inquires whether the user wants to play again at the end of each round. I utilize further discussion to discuss how we can have the loop break if the player loses once or if we've reached a certain number of rounds as opposed to repeating however many times the user wants to play the game.

```
highLowWhileLoop()
```

## Final Code
See the highLowGame.py file (see the repo) to see my code that performs looping and conditions all in a single function. This version is computer (dealer) vs. player. You would call upon the function like this.

```
highLowGame()
```

The code above, rather than following my suggestions, is a single function and does some of the additional discussion/assessment suggestions I list above. Namely, it repeats until the user either guesses wrong or until the user guessed four times consecutively. If we code it this way instead, an expansion suggestion could be to ask the user whether they want to continue and allow them to take partial loot as opposed to all loot for guessing right all three times. If they guess wrong, they lose everything.

## Expansion Discussion
From here, we can discuss more with probability, such as if we were to play the game with only a single deck (i.e. we do not have replacement occurring and thus do not have a chance of a tie). For this, it's highly recommended to bring the cards back out and let the students play the game with only a single deck and arrive to the conclusion that there is no possibility of a tie anymore and that the possibilities vector is adapted after the dealer has played their card. 

Students can consider how we can adjust the code for this version of the game and how we can even allow the user the choice of which version they'd like to play without having to call upon different functions (i.e. take in input asking which version the user wants to play, if they say with replacement play what we have here, otherwise play without replacement). This could be written as a separate function that calls upon the function we have here for with replacement.

We can also play other versions of the game, such as each player has three cards where the dealer reveals two and the player reveals one. The player must guess as to whether the sum of their cards exceeds the sum of the dealer's. This is played with a single deck, so no numbers are repeated.

## Adaptations
For general programming classes that may not have the statistics background, consider omitting the portion of the code where the probability values are given. Include if time allows for the discussion of probability here.

You can also elect to leave out the probabilities in the group code and show the expectation with running the above code. Allow the students to generate this portion on their own as a part of the expansion discussion. This is only recommended for students with the statistics background to properly evaluate these values.

You can also elect to include some additional explorations/assessment suggestions mentioned above within the class discussion or even omit them completely.
