# IMPORTS
import random
import time

# USER-CREATED FUNCTIONS
def highLowRound():
    # generates the random numbers for each card, numbers 1-9
    firstCard = random.randint(1,9)
    secondCard = random.randint(1,9)

    # NOTE: if you want to make sure there isn't a tie, you can add code in here for that -- se the Game file version

    print(f"The first card is... {firstCard}\n")

    # finds the probabilities
    pTie = (1/9) * 100
    pHigh = (9-firstCard)/9*100
    pLow = (firstCard-1)/9*100

    # gives the player time to think before letting them know the chances that the other card is higher or lower
    # these probabilities consider that a tie CAN happen
    time.sleep(2)
    print(f"The probability the other card is higher is... {pHigh}%")
    print(f"The probability the other card is lower is... {pLow}%")

    # get the guess from the user
    time.sleep(2)
    guess = input("Do you guess that the other card is (H)igher or (L)ower? ").upper()

    # optional touch while going through conditions if doing that before loops
    # consider using conditions for this test instead
    while guess not in ("H", "L"):
        guess = input("Let\'s try that again. Do you think the other card is (H)igher or (L)ower? ").upper()

    # set the reality based upon what the numbers actually reflect
    if firstCard > secondCard:
        reality = "L"
    elif firstCard < secondCard:
        reality = "H"
    else:
        reality = 0

    # let the player see the second card
    time.sleep(2)
    print(f"The other card is... {secondCard}\n")

    # if it was a tie, ask to play again
    # otherwise if they aren't the same, tell the player they lost
    # otherwise the player won
    if reality == 0:
        print("It was a tie. Let\'s go again.\n")
    elif guess != reality:
        print("You lose.\n")
    else:
        print("You guessed right!\n")

# version playing through the game 3 times
def highLowForLoop():
    roundTracker = 1

    for i in range(3):
        print(f"ROUND {roundTracker}""\n================================================= \n")
        highLowRound()
        roundTracker = roundTracker + 1

# version playng until the player no longer wants to play
def highLowWhileLoop():
    roundTracker = 1
    play = True

    while play == True:
        print(f"ROUND {roundTracker}\n================================================= \n")
        highLowRound()
        roundTracker = roundTracker + 1

        answer = input("Play again? (Enter Y for yes): ").upper()

        if answer != "Y":
            play = False

#highLowRound()
#highLowForLoop()
#highLowWhileLoop()
