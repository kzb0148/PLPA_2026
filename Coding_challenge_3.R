
##Previous assignment

##1.Using ggplot, create a boxplot of DON by Treatment so that the plot looks like the image below.
myco <- read.csv("MycotoxinData.csv")
colnames(myco)
str(myco)

#Converting to numeric from character
myco$DON <- as.numeric(myco$DON)
myco$MassperSeed_mg <- as.numeric(myco$MassperSeed_mg)
myco$X15ADON <- as.numeric(myco$X15ADON)

myco$Treatment <- as.factor(myco$Treatment)
myco$Cultivar <- as.factor(myco$Cultivar)
str(myco)

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
ggplot(myco, aes(x = Treatment, y = DON, 
                 color = Cultivar, fill = Cultivar)) +
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge") +
  geom_point(shape = 21,color = "black",
             position = position_jitterdodge(dodge.width = 0.9)) +
  ylab("DON (ppm)") +
  xlab("")


##5.Add a facet to the plots based on cultivar.

#Boxplot with facet
ggplot(myco, aes(x = treatment, y = DON, color = Cultivar, fill = Cultivar)) +
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





cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

##Assignment_3
 
##1.Using ggplot, create a boxplot of DON by Treatment so that the plot looks like the image below

don.plot <- ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("DON (ppm)") +
  xlab("") +
  scale_fill_manual(values = c(cbbPalette[[2]], cbbPalette[[3]])) +
  theme_classic() +
  facet_wrap(~Cultivar)

don.plot

#a.Jitter points over the boxplot and fill the points and boxplots Cultivar with two colors from the cbbPallete introduced last week

ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(position = position_jitterdodge(jitter.width = 0.2))


##b.	Change the transparency of the jittered points to 0.6. 
ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2))


##c.	The y-axis should be labeled "DON (ppm)", and the x-axis should be left blank.
ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("DON (ppm)") +
  xlab("")

##d.	The plot should use a classic theme
ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("DON (ppm)") +
  xlab("") +
  theme_classic()

##e.	The plot should also be faceted by Cultivar
ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("DON (ppm)") +
  xlab("") +
  theme_classic() +
  facet_wrap(~Cultivar)


##2.Change the factor order level so that the treatment “NTC” is first, followed by “Fg”, “Fg + 37”, “Fg + 40”, and “Fg + 70

myco$Treatment <- factor(myco$Treatment,levels = c("NTC", "Fg", "Fg + 37", "Fg + 40", "Fg + 70"))

plot_DON <- ggplot(myco, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("DON (ppm)") +
  xlab("") +
  scale_fill_manual(values = c(cbbPalette[2], cbbPalette[3])) +
  theme_classic() +
  facet_wrap(~Cultivar)

plot_DON



##3.Change the y-variable to plot X15ADON and MassperSeed_mg. The y-axis label should now be “15ADON” and “Seed Mass (mg)”. Save plots made in questions 1 and 3 into three separate R objects.

plot_15ADON <- ggplot(myco, aes(x = Treatment, y = X15ADON, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("15ADON") +
  xlab("") +
  scale_fill_manual(values = c(cbbPalette[2], cbbPalette[3])) +
  theme_classic() +
  facet_wrap(~Cultivar)

plot_15ADON


plot_SeedMass <- ggplot(myco, aes(x = Treatment, y = MassperSeed_mg, fill = Cultivar)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.6, position = position_jitterdodge(jitter.width = 0.2)) +
  ylab("Seed Mass (mg)") +
  xlab("") +
  scale_fill_manual(values = c(cbbPalette[2], cbbPalette[3])) +
  theme_classic() +
  facet_wrap(~Cultivar)

plot_SeedMass



##4.Use ggarrange function to combine all three figures into one with three columns and one row. Set the labels for the subplots as A, B and C. Set the option common.legend = T within ggarage function. What did the common.legend option do?

figures_combined <- ggarrange(
  plot_DON,
  plot_15ADON,
  plot_SeedMass,
  labels = c("A", "B", "C"),
  ncol = 3,
  nrow = 1,
  common.legend = TRUE)

figures_combined



##5.Use geom_pwc() to add t.test pairwise comparisons to the three plots made above. Save each plot as a new R object, and combine them again with ggarange as you did in question 4. Your final plot should look something like this. 

plot_DON_pwc       <- plot_DON       + geom_pwc(aes(group = Treatment), method = "t_test", label = "p.adj.signif")
plot_15ADON_pwc    <- plot_15ADON    + geom_pwc(aes(group = Treatment), method = "t_test", label = "p.adj.signif")
plot_SeedMass_pwc  <- plot_SeedMass  + geom_pwc(aes(group = Treatment), method = "t_test", label = "p.adj.signif")


figures_stats_combined <- ggarrange(
  plot_DON_pwc,
  plot_15ADON_pwc,
  plot_SeedMass_pwc,
  labels = c("A", "B", "C"),
  ncol = 3, nrow = 1,
  common.legend = TRUE)

figures_stats_combined





