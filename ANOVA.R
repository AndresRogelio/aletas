library(UsingR)
data(blood)
attach(blood)
t.test(Machine,Expert, var.equal = TRUE)
mod1 <- t.test(Machine,Expert, var.equal = TRUE)
report::report(mod1)
detach(blood)


install.packages("palmerpenguins")
library(palmerpenguins)
library(tidyverse)

data("penguins")
names(penguins)
penguins %>%
 dplyr::select(species, flipper_length_mm)-> dat
summary(dat)

ggplot(dat) +
  aes(x = species, y = flipper_length_mm, color = species) +
  geom_jitter() +
  theme(legend.position = "none")

res_aov <- aov(flipper_length_mm ~ species,
  data = dat
)


# comprobar la normalidad
par(mfrow = c(1, 2)) # combine plots

# histogram
hist(res_aov$residuals)

# QQ-plot
library(car)
qqPlot(res_aov$residuals,
  id = FALSE # id = FALSE to remove point identification
)

shapiro.test(res_aov$residuals)

# Boxplot
boxplot(flipper_length_mm ~ species,
  data = dat
)

# Dotplot
library("lattice")

dotplot(flipper_length_mm ~ species,
  data = dat
)

# Levene's test
library(car)

leveneTest(flipper_length_mm ~ species,
  data = dat
)

par(mfrow = c(1, 2)) # combine plots

# 1. Homogeneity of variances
plot(res_aov, which = 3)

# 2. Normality
plot(res_aov, which = 2)

dev.off()

library(ggplot2)

ggplot(dat) +
  aes(x = species, y = flipper_length_mm) +
  geom_boxplot()


library(dplyr)

group_by(dat, species) %>%
  summarise(
    mean = mean(flipper_length_mm, na.rm = TRUE),
    sd = sd(flipper_length_mm, na.rm = TRUE)
  )

res_aov <- aov(flipper_length_mm ~ species,
  data = dat
)

summary(res_aov)
report::report(res_aov)

welch <- oneway.test(flipper_length_mm ~ species,
  data = dat,
  var.equal = TRUE # assuming equal variances
)

library(multcomp)

# Tukey HSD test:
post_test <- glht(res_aov,
  linfct = mcp(species = "Tukey")
)

summary(post_test)

par(mar = c(3, 10, 3, 3))
plot(post_test)

TukeyHSD(res_aov)
plot(TukeyHSD(res_aov))

library(ggstatsplot)

ggbetweenstats(
  data = dat,
  x = species,
  y = flipper_length_mm,
  type = "parametric", # ANOVA or Kruskal-Wallis
  var.equal = TRUE, # ANOVA or Welch ANOVA
  plot.type = "box",
  pairwise.comparisons = TRUE,
  pairwise.display = "significant",
  centrality.plotting = FALSE,
  bf.message = FALSE
)



# kruskal.test(variable ~ group, data = dat
# leveneTest(variable ~ group)
# oneway.test(variable ~ group, var.equal = FALSE)

kruskal.test(flipper_length_mm ~ species,
  data = dat
)

# prueba de Dunn
library(FSA)

dunnTest(flipper_length_mm ~ species,
  data = dat,
  method = "holm"
)

install.packages(PMCMRplus)
library(ggstatsplot)

ggbetweenstats(
  data = dat,
  x = species,
  y = flipper_length_mm,
  type = "nonparametric", # ANOVA or Kruskal-Wallis
  plot.type = "box",
  pairwise.comparisons = TRUE,
  pairwise.display = "significant",
  centrality.plotting = FALSE,
  bf.message = FALSE
)


