# the cards list, as a vector of data to work with
# 1:9 is the integers 1 through 9
# this is likely the only place that would need adjusting for other similar games
cards <- c(1:9)
play <- TRUE
roundTracker <- 1

highLowRound <- function(){
  firstCard <- sample(cards,1)
  secondCard <- sample(cards,1)
    
  cat("The first card is...", firstCard, "\n")
  #cat("The probabilities of high/low are below... \n")
  #average <- mean(cards)
    
  # the probability of any one card is 1/9 (i.e. one card out of nine possibilities)
  pTie <- (1/9) * 100
    
  # to consider when the probability is higher, we need to consider each 
  # possible card greater than the one we have. 
  # the number of cards greater than the one we have is 9-yourCard
  # thus, the probability of the other card being higher is (9-yourCard)/9
  pHigh <- ((9-firstCard)/9) * 100
    
  # to consider when the probability is lower, we need to consider each
  # possible card less than the one we have.
  # the number of cards less than the one we have is yourCard-1
  # thus, the probability of the other card being lower is (yourCard-1)/9
  pLow <- ((firstCard-1)/9) * 100
    
  # multiplying each of the above values adjusts them to percent format for printing
  # used cat because it looks cleaner in R than print does
  # and it allows the user to easily read everything
  # even if they have no previous R experience
  Sys.sleep(2)
  cat("The probability the other card is higher is...", pHigh, "% \n")
  cat("The probability the other card is lower is...", pLow, "% \n")
  cat("The probability the other card is the same is...", pTie, "% \n")
    
  # obtain the guess from the user
  # the guess should be H or L
  Sys.sleep(2)
  guess <- readline("Do you guess that the other card is (H)igher or (L)ower? ")
  guess <- as.character(guess)
  
    # determine what the correct guess should be
  # if it's a tie, it'll be 0
  if(firstCard > secondCard){
    reality <- "L"
  } else if(firstCard < secondCard){
    reality <- "H"
  } else {
    reality <- 0
  }
  
  # reveal what the other card is and what the guess should have been
  Sys.sleep(2)
  cat("The other card is...", secondCard, "\n")
  #Sys.sleep(2)
  #cat("Comparing to the first card, the correct guess is...", reality, "\n")
    
  Sys.sleep(2)
  # if it was a tie, try again without changing the round tracker
  if(reality==0){
    cat("It was a tie. Let's go again. \n")
  }
  # otherwise, if the guess is wrong, advise the player they lost
  # and break out of the loop
  else if(guess != reality){
    cat("You lose. \n")
  } 
  # otherwise, advise the player their guess was right
  # and increase the tracker by 1 so that we limit the rounds
  # (we don't want them guessing forever...)
  else {
    cat("You guessed right. \n")
  }
}

highLowForLoop <- function(){
  for(i in 1:5){
    cat("ROUND", roundTracker, "\n================================================= \n")
    highLowRound()
    roundTracker <- roundTracker + 1
  }
}

highLowWhileLoop <- function(){
  while(play==TRUE){
    cat("ROUND", roundTracker, "\n================================================= \n")
    highLowRound()
    roundTracker <- roundTracker + 1
    
    answer <- readline(prompt="Play again? (Enter Y to play again): ")
    
    if (answer != "Y") {
      play <- FALSE
    }
  }
}