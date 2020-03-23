logAIDS = log(disease$AIDS+1)
logSyph = log(disease$Syphilis+1)
logTub = log(disease$Tuberculosis+1)
boxplot(logAIDS, logSyph, logTub, names = c('AIDS','Syphilis','Tuberculosis'))
# a) All three diseases tend to have a mean of around 250-400 while AIDS has bigger
#   outliers (with one nearing 8000 cases) throughout the data. AIDS and Tuberculosis
#   have the larger quartiles leading to larger "legs" on their box plots.
# b) The distributions now seem to be closer in relation to each other with their
#   "legs" (their quartiles) now being closer to each other and their averages around
#   5-5.5. There are also far fewer outliers with a total of one outlier on the AIDS 
#   boxplot. Their quartiles also appear to be far more dominant in this version of
#   their boxplots.