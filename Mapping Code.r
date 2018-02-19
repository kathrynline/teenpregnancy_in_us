library(haven) 
library(Matrix)
library(maptools)
library(RColorBrewer)
library(classInt)
library(geosphere)
library(ggmap) 
library(gplots)
library(ggfortify)


data<-read.csv("C:/Users/elineb/Desktop/Teenage Pregnancy in US Counties Project/With Generated Variables.csv")

map<-readShapePoly("C:/Users/elineb/Downloads/cb_2016_us_state_20m/cb_2016_us_state_20m.shp")

purple_scale<-colorRampPalette(c("deeppink", "darkviolet")) #Want to make this a light pink to dark purple scale. 
data$Col<-purple_scale(50)[as.numeric(cut(data$ALL_2015)), seq(0, 50, by = 1)]

#Map of Teenage birth rates in 2015 for all races
data$order = findInterval(data$ALL_2015, sort(data$ALL_2015))
plot(map, col = purple_scale(nrow(data))[data$ALL_2015])

#Map of decline in teen birth rates from 2007-2015 for non-hispanic whites
plot(map, col = data$DIFFERENCE_NHW_07_15)

#Map of decline in teen birth rates from 2007-2015 for non-hispanic blacks
plot(map, col = data$DIFFERENCE_NHB_07_15)

#Map of decline in teen birth rates from 2007-2015 for hispanics
plot(map, col = data$DIFFERENCE_HSP_07_15)


#Dig into the states that had negative rates of change for hispanic and black teens here.
#Is it possible to get county-level data? What might be causing this? 

# Rank variable for colour assignment
df$order = findInterval(df$Temp, sort(df$Temp))

# Make plot
plot(Flow ~ Year, df, pch=19, col=pal(nrow(df))[df$order])
# Add a simple legend
legend("topright", col=pal(2), pch=19,
       legend=c(round(range(df$Temp), 1)))