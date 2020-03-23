dat <- read.csv("nitrogen.txt")
diff(range(dat$nitrogen))
IQR(dat$nitrogen)
sd(dat$nitrogen)

#Results:
#> diff(range(dat$nitrogen))
#[1] 1.4
#> IQR(dat$nitrogen)
#[1] 0.655
#> sd(dat$nitrogen)
#[1] 0.3856654

# b) The range and the standard deviation are severly affected by outliers
#   so for 15.9 they would increase and for 151.9 they would increase significantly.
#   The IQR is not so easliy affected by outliers because it is based off of the 
#   percent quartiles or where most of the data is, rather than outliers. So the 
#   IQR will not be affected as much. (25%, 50%, 75%)