#pick two cards without replacement
#exactly one heart and exactly one king

nsim = 100000
deck = 1:52
drawHaK = FALSE
for(j in 1:10){
  exactlyOne = rep(0,nsim)
  for(i in 1:nsim){
    samp = sample(deck, 2, replace = F)
    if((samp[1] < 13 & samp[2] > 49) | (samp[1] > 49 & samp[2] < 13) | (samp[1] == 13 & samp[2]%in%14:49) | (samp[1]%in%14:49 & samp[2]==13)){
      drawHaK = TRUE
    }
    else{
      drawHaK = FALSE
    }
    if(drawHaK){
      exactlyOne[i] = 1
    }
  }
  cat("the mean is: ", mean(exactlyOne), "\n")
}