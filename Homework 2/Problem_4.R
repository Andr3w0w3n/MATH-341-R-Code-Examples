skewness <- function(x){
  x <- x[!is.na(x)]
  top <- 3*(mean(x)-median(x))
  skewness <- top/sd(x)
  skewness
}

skewness(dat$speed)
skewness(dat$sleep)
#Results:
#> skewness(dat$speed)
#[1] 0.8949298
#> skewness(dat$sleep)
#[1] -0.158146

# both of the two variables were off by a couple of tenths, the first one was supposed to be
#1.084158 and the second one is supposed to be -0.3326672. For simply recognizing
# the skew of the graphs this is not enough to make a difference however, this difference
could be enough that the degree of which the graphs are skewed is off by too much.