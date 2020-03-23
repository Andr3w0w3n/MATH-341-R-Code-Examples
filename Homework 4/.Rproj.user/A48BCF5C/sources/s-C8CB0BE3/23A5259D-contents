#pick balls out of a bag and find the probability of drawing out 2 white
# balls before the 4 green balls

nsim = 100000
balls = c("white", "white", "red", "red", "red", "green", "green", "green", "green")
drawn = rep(0,  nsim);
for(i in 1:nsim){
  sampleVec = sample(balls, 9, replace=F)
  whiteCount = 0
  drawnWhite = FALSE
  drawnGreen = FALSE
  loc = 1
  while(!drawnWhite && !drawnGreen){
    if(sampleVec[loc] == "white"){
      whiteCount = whiteCount+1
      if(whiteCount == 2){
        drawnWhite = T
      }
    }else if(sampleVec[loc] == "green"){
      drawnGreen = T
    }
    loc = loc+1
  }
  if(drawnWhite && !drawnGreen){
    drawn[i] = 1
  }
}
cat("The probability is: ", mean(drawn))