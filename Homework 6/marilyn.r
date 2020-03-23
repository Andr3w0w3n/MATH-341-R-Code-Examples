# This code simulates the Monty Hall problem by randomly placing a car behind one door,
# and randomly deciding whether to switch doors after a goat is revealed.
# =====================================================================================
nsim = 1000;
wins = rep(0,nsim)
switches = rep(0,nsim)
for( i in 1:nsim){
  doors = c(1,2,3)                       # Creates a vector with door labels 1,2,3.
  cardoor = sample(doors,size=1)         # Randomly samples the door number with the car.
  switch = sample(c("Yes","No"),size=1)  # Randomly decides whether or not to switch.
  if (cardoor==1){                       #         CASE WITH CARDOOR = 1
    revealdoor = sample(c(2,3),size=1)   # Decides whether to reveal the goat behind 2 or 3.
    finaldoor = 1*(switch=="No") +       # Determines the final door for the player based on
      revealdoor*(switch=="Yes")         #   whether or not a switch occurred.
  }                                      
  if (cardoor==2){                       #         CASE WITH CARDOOR = 2
    revealdoor = 3	               		   # The goat behind Door 3 must be revealed here.
    finaldoor = 1*(switch=="No") +       # Determines the final door for the player based on
      2*(switch=="Yes")                  #   whether or not a switch occurred.
  }                                      
  if (cardoor==3){                       #         CASE WITH CARDOOR = 3
    revealdoor = 2                       # The goat behind Door 2 must be revealed here.
    finaldoor = 1*(switch=="No") +       # Determines the final door for the player based on
      3*(switch=="Yes")                  #   whether or not a switch occurred.
  }                                      
  win = "No"                             # Initially, we assume that we lose.
  if (finaldoor==cardoor) win = "Yes"
  wins[i] = win
  switches[i] = switch
}
table(wins, switches)
#cat("Wins w/Switching Probability: ", mean(wins))
