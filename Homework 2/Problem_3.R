skew <- function(x){                          # Function to compute skewness 
  x <- x[!is.na(x)]                           # Removes any NA values from "x" 
  sum2 <- sum((x-mean(x))^2)                  # Computes sum of squares 
  sum3 <- sum((x-mean(x))^3)                  # Computes sum of cubes 
  skew <- (sqrt(length(x))*sum3)/(sum2^(1.5)) # Calculates skewness coefficient 
  skew                                        # Returns skewness value 
}                                             # End of function

skew(dat$speed)
skew(dat$sleep)
hist(dat$sleep)

# a) The skew from the speed data is 1.084158 which means the data is right 
#   skewing to a good degree. The sleep data's skew is -0.3326672 which means
#   it is left skewing to a low/moderate degree.
# b) The historgram of speed is certianly skewing right but it does not have as
#   much skew as I origionally thought. The historgram of the sleep data does
#   skew left but it is very symmetrical which explains why the skew data was
#   close to 0, as the closer to 0 the skew value is, the more symmetrical it is.