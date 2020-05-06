project <- vgsales
regr1 <-lm(project$Global_Sales ~ project$Genre + project$Platform + project$Year)
reg2 <-lm(project$Global_Sales ~ project$Genre)
plot(reg2)
summary(reg2)

summary(project$Global_Sales)
