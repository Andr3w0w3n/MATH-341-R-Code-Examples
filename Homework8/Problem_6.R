
nsim = 100000
for(i in 3:10){
  numbers = 1:i
  prob = rep(0, nsim);
  for(j in 1:nsim){
    letters = sample(numbers, replace = F)
    envelopes = sample(numbers, replace = F)
    match = 0
    for(k in 1:i){
      if(letters[k] == envelopes[k]){
        match = match+1
      }
    }
    if(match>0){
      prob[j] = 1
    }
  }
  cat("The probability of", i)
  cat(": ", mean(prob))
  cat("\n")
}
