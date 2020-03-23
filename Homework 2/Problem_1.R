plot(dat$ideal[dat$sex == 'Female'], dat$actual[dat$sex == 'Female'], pch = 21, xlim = c(85, 230), ylim = c(85, 220), xlab = 'Ideal', ylab = 'Actual')
points(dat$ideal[dat$sex == 'Male'], dat$actual[dat$sex == 'Male'], pch = 15)
abline(0,1)
cor(dat$ideal, dat$actual)
# a) The plot has a correlation coeffecient of 0.9099249, meaning there is a strong, positive relationship
#   between the ideal weights and the actual weights of the subjects.
# b) Males tend to have higher ideal weights than Females with most of the Male's data
#   being in the 150-200 range while most of the Female's data is in the 100-150 range.
#   Females also appear to tend to have an ideal weight ~20lbs lower than their actual 
#   while Males tend to have an ideal weight ~5-10lbs lower than their actual.