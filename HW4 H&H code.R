
#Problem 3.1
#granodiorite data
gd <- c(6.0, 0.5, 0.4, 0.7, 0.8, 6.0, 5.0, 0.6, 1.2, 0.3, 0.2, 0.5, 0.5, 10, 0.2, 0.2, 1.7, 3.0 )

#sort low to high
gdsort <- sort(gd)

#non-parametric 95% CI
#which points to construct around
(0.05/2)*length(gd)
(1-0.05/2)*length(gd)
# rounding to 1 and 17
print(paste(gdsort[1], "to", gdsort[17]))


#parametric 95% CI (non-transformed)
print(paste(mean(gd)-qt(0.975, length(gd)-1)*sd(gd)/sqrt(length(gd)), "to", mean(gd)+qt(0.975, length(gd)-1)*sd(gd)/sqrt(length(gd))))



#Problem 3.4
#flow data
year <- c(1941:1960)
flow <- c(369, 683, 923, 1193, 413, 1025, 894, 859, 1157, 524, 327, 574, 762, 578, 379, 375, 581, 581, 530, 929)
hist(flow)
hist(log(flow))
#ln transform seems viable, most other transforms seem to lack central peak or have multiple peaks


lnflow <- log(flow)
# 95% CI on log scale, converted back to real scale
print(paste(exp(mean(lnflow)-qt(0.975, length(lnflow)-1)*sd(lnflow)/sqrt(length(lnflow))), "to", exp(mean(lnflow)+qt(0.975, length(lnflow)-1)*sd(lnflow)/sqrt(length(lnflow)))))