#roll three 6-sided dice and find the sum of the dice
#roll five 6-side dice and find the sum
#find the probability of the 3 die sum being as large 
#or larger than the 5 die sum
nsim = 100000
cat(nsim)
threeDie = 1:6
fiveDie = 1:6
for(j in 1:10){
  rolls = rep(0, nsim)
  for(i in 1:nsim){
    threeRoll = sample(threeDie, 3, replace = T)
    fiveRoll = sample(fiveDie, 5, replace = T)
    threeSum = sum(threeRoll)
    fiveSum = sum(fiveRoll)
    if(threeSum >= fiveSum){
      rolls[i] = 1
    }
  }
  cat("the mean is: ", mean(rolls), "\n")
}
