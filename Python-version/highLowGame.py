# name
# course

# IMPORT LIBRARIES
import random
import time

# FUNCTION DEFINTIONS

# function for playing the game
def highLowGame():
    cards = list(range(1,10))   # makes a list of cards numbers 1-9
    play = True                 # for while we still want to play
    roundTracker = 1            # keep track of the round number

    while(play==True):          # play until we don't want to anymore
        # draw the cards
        firstCard = random.choice(cards)
        secondCard = random.choice(cards)

        ''''
        # commented out -- add back in if you do not want ties
        # while the two cards are the same, redraw the second card
        while firstCard == secondCard:
            secondCard = random.choice(cards)
        '''

        # print off a header for the round
        # using f-strings to make it look nicer
        print(f"ROUND {roundTracker} \n================================================= \n")

        print(f"The first card is... {firstCard} \n")

        # compute the probabilities as percentages
        # comment out pTie lines if you do not want the possibility of a tie
        pTie = 1/9 * 100
        pHigh = (9-firstCard)/9 * 100
        pLow = (firstCard-1)/9 * 100

        # Wait a couple seconds for suspense, then give them the probabilities that the other card is higher, lower, or the same
        time.sleep(2)
        print(f"The probability the other card is higher is... {pHigh}% \n")
        print(f"The probability the other card is lower is... {pLow}% \n")
        print(f"The probability the other card is the same is... {pTie}% \n")

        # pause again for suspense, then obtain the guess from the user. They should say H or L
        time.sleep(2)
        guess = input("Do you guess that the other card is (H)igher or (L)ower? ").upper()


        # while they input something that isn't H or L
        while guess not in ("H", "L"):
            guess = input("Let\'s try that again. Do you think the other card is (H)igher or (L)ower? ").upper

        if firstCard > secondCard:
            reality = "L"
        elif firstCard < secondCard:
            reality = "H"
        else:
            reality = 0

        # reveal the other card
        time.sleep(2)
        print(f"The other card is... {secondCard}.\n")

        # if it was a tie, try again without changing the round tracker
        time.sleep(2)
        if reality == 0:
            print(f"It was a tie. Let's go again.\n")
        # otherwise, if the guess is wrong, advise the user they lost and break out of the loop
        elif guess.upper() != reality:
            print("You lose.\n")
            break
        # otherwise, they win and increase the round tracker
        else:
            print("You guessed right!\n")
            roundTracker += 1

        time.sleep(2)
        # once there are three wins in a row, tell the player they've won and break out of the loop

        if roundTracker == 4:
            print("You win the items in the treasure chest!\n")
            break
        # otherwise tell them they're getting closer and will continue looping until they are wrong and lose
        else:
            print("You're getting closer to unlocking the chest, \nbut you need to keep going to unlock it completely!\n")
            time.sleep(2)

highLowGame()
