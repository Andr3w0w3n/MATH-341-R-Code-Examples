#Problem 6

#a)For a 162-game baseball season, suppose a particular team, 
#say the Baltimore Orioles, has a probability of p of winning 
#any particular game. Using 10,000 simulated seasons with a winning 
#probability of p = 1/2 for each individual game, compute the longest 
#streak attained in each season and produce a histogram of these maximum 
#streak lengths. How unusual would it be for Baltimore to have a winning 
#streak of at least 10 games? How about at least 15 games? 
#Quantify your answer based on the results of the simulation. */

#b)In 2017, the Cleveland Indians actually had a winning streak of 
#22 games, one of the longest in the history of Major League baseball! 
#Their winning percentage for the whole season was 102/162 = .63. 
#Assuming this actual winning percentage, rerun the simulation in part (a) 
#to estimate how likely it would be for them to win at least 22 games in a 
#row just by chance.

#c)The team with the best record in baseball last season (2018) was the 
#Los Angeles Dodgers, who won p = 0.642 of their games. Amazingly, they 
#managed to have a LOSING streak of 11 consecutive games! Rerun your 
#simulation for the Dodgers with this winning percentage of 0.642 and 
#estimate how likely it would be for them to LOSE 11 or more games in a row.

nseasons = 10000
nsim = 10
maxLen = rep(1:nseasons)
numOf11 = 0;
for (i in 1:nseasons) {
  n = 162 # Sets the number of games in a season 
  p = 0.642 # Sets the probability of a win 
  x = sample(c(1, -1), n, replace = T, # Samples from values 1 (Win) & -1 (Loss), for 
        prob = c(p, 1 - p)) # n games, with replacement, with (win,loss) 
  # probabilities given by prob=c(p,1-p). 
  r = rle(x) # Computes the lengths of all streaks in "x" 
  maxlen = max(r$lengths[r$values == -1]) # Finds the maximum winning streak
  if(maxlen >= 11){
    numOf11 = numOf11+1;
  }
}
cat(numOf11)
