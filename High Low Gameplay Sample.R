# this game is to mimic "High Low" from Tista-Bie in FFXIV

# Instructions from Tista-Bie
highLow<- function(){
  
  roundTracker <- 1
  cat("DISCLOSURE: This game is to mimic the game \"High Low\" from Tista-Bie of Eulmore in the critically acclaimed MMORPG Final Fantasy XIV")
  
  cat("Most people buzz about during the day, whereas I am a creature of the night. \n")
  Sys.sleep(2)
  cat("After all, the best games are played after dark, wouldn't you agree? \n")
  Sys.sleep(2)
  cat("With that, would you desire to play a game of high-low? \n")
  game <- readline(prompt="(Will you reply 'yes' or 'no'?) ")
  
  if (game=="yes"){
    cat("Come then, honeybee. Let's have some fun! \n")
    Sys.sleep(2)
    play <- TRUE
    
    while (play==TRUE) {
      cards <- c(1:9)
      cat("================================================= \n                     ROUND", roundTracker, "\n================================================= \n")
      cat("Three cards for you, three cards for me. You flip one of yours over, and I flip two of mine. \n")
      
      tbCard1 <- sample(cards,1)
      cards <- cards[-tbCard1]
      #    cat("My card 1: ", tbCard1, "\n")
      #    cat("The current deck is... ", cards, "\n")
      
      yourCard1 <- sample(cards,1)
      for (i in 1:length(cards)){
        if (yourCard1 == cards[i]){
          cards <- cards[-i]
          break
        }
      } # need to fix this to remove the right value
      #    cat("Your card 1: ", yourCard1, "\n")
      #    cat("The current deck is... ", cards, "\n")
      
      tbCard2 <- sample(cards,1)
      for (i in 1:length(cards)){
        if (tbCard2 == cards[i]){
          cards <- cards[-i]
          break
        } 
      }
      #    cat("My card 2: ", tbCard2, "\n")
      #    cat("The current deck is... ", cards, "\n")
      
      yourCard2 <- sample(cards,1)
      for (i in 1:length(cards)){
        if (yourCard2 == cards[i]){
          cards <- cards[-i]
          break
        } # need to fix this to remove the right value
      }
      #    cat("Your card 2: ", yourCard2, "\n")
      #    cat("The current deck is... ", cards, "\n")
      
      tbCard3 <- sample(cards,1)
      for (i in 1:length(cards)){
        if (tbCard3 == cards[i]){
          cards <- cards[-i]
          break
        } 
      }
      #    cat("My card 3: ", tbCard3, "\n")
      #    cat("The current deck is... ", cards, "\n")
      
      yourCard3 <- sample(cards,1)
      for (i in 1:length(cards)){
        if (yourCard3 == cards[i]){
          cards <- cards[-i]
          break
        } 
      }
      #    cat("Your card 3: ", yourCard3, "\n")
      #    cat("The current deck is... ", cards, "\n")
      
      tbTotal <- tbCard1+tbCard2+tbCard3
      #    cat("My total is ", tbTotal, "\n")
      
      yourTotal <- yourCard3+yourCard2+yourCard1
      #    cat("Your total is", yourTotal, "\n")
      
      Sys.sleep(2)
      cat("My two cards are... ", tbCard1, " and ", tbCard2, " \n")
      Sys.sleep(2)
      cat("My sum is ", tbCard1+tbCard2, "\n")
      
      Sys.sleep(2)
      cat("Your card is... ", yourCard1, "\n")
      
      Sys.sleep(2)
      #cat("What is your call? Will your total be higher (h) or lower (l) than mine?  \n")
      
      call <- readline("What is your call? Will your total be higher (h) or lower (l) than mine?  ")
      
      while (call != "h" && call != "l"){
        cat("Let's try this again darling. \n")
        call <- readline("What's your call? Will your total be higher (h) or lower (l) than mine?  ")
      }
      
      if(call=="h"){
        yourCall <- "high"
      } else if(call == "l"){
        yourCall <- "low"
      }
      cat("You're going with ", yourCall, ", then? Right, let's see what we've got. \n")
      Sys.sleep(2)
      
      cat("Your second card is... ", yourCard2, " \n")
      Sys.sleep(2)
      
      cat("My third card is... ", tbCard3, " \n")
      Sys.sleep(2)
      
      cat("My cards add up to... ", tbTotal, ". And you have... \n")
      Sys.sleep(2)
      
      cat("Your third card is... ", yourCard3, " \n")
      Sys.sleep(2)
      
      cat("... a total of ", yourTotal, " \n")
      
      if (yourTotal > tbTotal){
        if (call=="h"){
          cat("Contratulations, your guess was right! \n")
          Sys.sleep(2)
          cat("Well, it seems luck was on your side. Or perhaps it was more than that... \n")
          Sys.sleep(2)
          cat("How does victory taste? Sweet as nectar, yes? \n")
        } else {
          cat("Aww... Sorry, honeybee, but this match goes to me. \n")
        }
      } else if (yourTotal < tbTotal){
        if (call=="l"){
          cat("Contratulations, your guess was right! \n")
          Sys.sleep(2)
          cat("Well, it seems luck was on your side. Or perhaps it was more than that... \n")
          Sys.sleep(2)
          cat("How does victory taste? Sweet as nectar, yes? \n")
        } else {
          cat("Aww... Sorry, honeybee, but this match goes to me. \n")
        }
      } else {
        cat("It would seem that we have tied this time, love. \n")
      }
      Sys.sleep(2)
      cat("Can I tempt you with another game? \n")
      game <- readline(prompt="(Will you reply 'yes' or 'no'?) ")
      
      if(game=="yes"){
        cat("Stay with me a while longer, my dear. \n")
        Sys.sleep(2)
        roundTracker <- roundTracker + 1
      } else {
        play <- FALSE
        cat("Let's play again in the future, honeybee.")
      }
    }
  } else {
    cat("Mayhap I can tempt you to play again another time.")
  }
  
}