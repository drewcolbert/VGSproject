project <- vgsales
regr1 <-lm(project$Global_Sales ~ project$Genre + project$Platform + project$Year)
reg2 <-lm(project$Global_Sales ~ project$Genre)
plot(reg2)
summary(reg2)

summary(project$Global_Sales)


# DC 5/6/20
vg_data <- read.csv("~/Downloads/vgsales.csv")
vg_data <- vg_data[,-7:-10]
vg_data <- vg_data[which(vg_data$Global_Sales >= .500),]
vg_data$Global_Sales <- cut(vg_data$Global_Sales, breaks = c(0.4000, .5000, 1.0000, 7.000, 19.000, 83.000), labels = c("Poor", "Very Low", "Low", "Decent", "High", "Very High", "Top Seller"))


vg_transaction <- read.transactions("~/Downloads/vgsales.csv")

write.csv(vg_data, file = "/Users/drewcolbert/newvg_data.csv")
newvg_data <- read.csv("~/Downloads/newvg_data.csv")
newvg_data <- newvg_data[,-1:-2]
# PLAY AROUND WITH THE SUPPORT AND CONFIDENCE
vg_rules <- apriori(temp, parameter = list(support = 0.01, conf = 0.5))
inspect(rules[1:10])
