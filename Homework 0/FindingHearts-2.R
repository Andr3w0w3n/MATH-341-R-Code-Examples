#select two cards for deck without replacement
#find the probability of selecting exactly one heart

nsim = 100000
deck = 1:52
drawOneHeart = FALSE
for(j in 1:10){
  exactlyOne = rep(0,nsim)
  for(i in 1:nsim){
    samp = sample(deck, 2, replace = F)
    if((samp[1] <= 13 && samp[2] <= 13)|| (samp[1]>13 && samp[2] >13)){
      drawOneHeart = FALSE
    }
    else if((samp[1] <= 13 && samp[2] >13)|| (samp[1] > 13 && samp[2] <= 13)){
      drawOneHeart = TRUE
    }
    if(drawOneHeart){
      exactlyOne[i] = 1
    }
  }
  cat("the mean is: ", mean(exactlyOne), "\n")
}