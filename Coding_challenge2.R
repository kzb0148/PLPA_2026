##1.Explain the following concepts about ggplot 

#a.What three elements do you need to produce a ggplot?
#A.The three elements needed to produce a ggplot are dataset, aes(aesthetic) and geom layer.

#b.	What is a geom? 
#A.It is a layer that shows how the data are displayed like bars, box plots etc.

#c.	What is a facet? 
#A.It creates separate panels for each variable

#d.	Explain the concept of layering.
#A.Means adding parts to a plot step by step using + sign

#e.	Where do you add x and y variables and map different shapes, colors, and other attributes to the data? 
#A.They are mapped inside aes().



##2.Make a boxplot using ggplot with DON as the y variable, treatment as the x variable, and color mapped to the wheat cultivar. Change the y label to “DON (ppm)” and make the x label blank.
myco <- read.csv("MycotoxinData.csv")
colnames(myco)
library(ggplot2)
str(myco)

ggplot(myco, aes(x = Treatment, y = DON, color = Cultivar)) +
  geom_boxplot() +  
  xlab("") + 
  ylab("DON (ppm)") 


##3.Now convert this data into a bar chart with standard-error error bars using the stat_summary() command. (hint: use position = dodge)

ggplot(myco, aes(x = Treatment, y = DON, color = Cultivar, fill = Cultivar)) +
  # Bar layer_mean DON per treatment
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  
  # Error bars_standard error
  stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge") +
  
  # Labels
  xlab("") +
  ylab("DON (ppm)")

##4.Add points to the foreground of the boxplot and bar chart you made in questions 2 & 3 that show the distribution of points. Set the shape = 21 and the outline color black (hint: use jitter_dodge). 
ggplot(myco, aes(x = Treatment, y = DON, color = Cultivar, fill = Cultivar)) +
  geom_boxplot() +
  # Points with shape = 21 and black outline
  geom_point(position = position_jitterdodge(dodge.width = 0.9),
             shape = 21, color = "black") +
  
  xlab("") +
  ylab("DON (ppm)")

#Bar chart with points
ggplot(myco, aes(x = treatment, y = DON, 
                       color = cultivar, fill = cultivar)) +
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge") +
  geom_point(shape = 21,color = "black",
             position = position_jitterdodge(dodge.width = 0.9)) +
  ylab("DON (ppm)") +
  xlab("")


##5.Add a facet to the plots based on cultivar.

#Boxplot with facet
ggplot(myco, aes(x = treatment, y = DON, color = cultivar, fill = cultivar)) +
  geom_boxplot() +
  geom_point(shape = 21,
             color = "black",
             position = position_jitterdodge(dodge.width = 0.9)) +
  facet_wrap(~cultivar) +
  ylab("DON (ppm)") +
  xlab("")

#Bar chart with facet
ggplot(myco, aes(x = Treatment, y = DON, color = Cultivar, fill = Cultivar)) +
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9),
             shape = 21, color = "black") +
  
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)



##6.Add transparency to the points so you can still see the boxplot or bar in the background. 

ggplot(myco, aes(x = Treatment, y = DON, color = Cultivar, fill = Cultivar)) +
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9),
             shape = 21, color = "black", alpha = 0.5) +
  
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)

# Push it to GitHub




