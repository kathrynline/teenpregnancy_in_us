library(haven) 
library(Matrix)
library(maptools)
#library(gpclib)
library(RColorBrewer)
library(classInt)
library(geosphere)
library(ggmap) 

library(gplots)
library(ggfortify)


data<-read.csv("C:/Users/elineb/Documents/teenpregnancy_in_us/Base Data.csv")

map<-readShapePoly("C:/Users/elineb/Documents/cb_2016_us_state_500k.shp")

