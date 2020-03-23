dat <- read.csv("Class_Data_F2019.txt")
trim_dat = sort(dat$sleep)[5:37]
# a)
mean(trim_dat)
mean(dat$sleep)

#Results:
#> mean(trim_dat)
#[1] 6.909091
#> mean(dat$sleep)
#[1] 6.916667

# b)

quantile(trim_dat)
quantile(dat$sleep)

sd(trim_dat)
sd(dat$sleep)

#Results:
#> quantile(trim_dat)
#0%  25%  50%  75% 100% 
#4.5  6.0  7.0  8.0  8.5 
#> quantile(dat$sleep)
#0%  25%  50%  75% 100% 
#3.5  6.0  7.0  8.0 10.0 
#> sd(trim_dat)
#[1] 1.085807
#> sd(dat$sleep)
#[1] 1.580817

# b) 