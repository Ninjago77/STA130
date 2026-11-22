#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
library(gridExtra)
library(tidyverse)
library(knitr)
library(cowplot)
library(moderndive)
knitr::opts_chunk$set(
echo = FALSE,
include = TRUE,
warning = FALSE,
message = FALSE,
results = "markup",
fig.width = 6,
fig.height = 3.5,
fig.align = "center",
out.width = "80%"
)
#
#
#
### Read in data

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#Your plot code here 
iris |>
  ggplot(aes(x=Species, y=Sepal.Length)) +
  geom_boxplot() +
  ylab("Sepal Length")
#
#
#
#
#
#Your summary table here

# Here is an example of a nicely formatted table, using the kable function
iris |>
  group_by(Species) |>
  summarise(
    Count = n(),
    `Avg Sepal Length` = round(mean(Sepal.Length), 1),
    `Avg Petal Length` = round(mean(Petal.Length), 1)
  ) |>
  kable(caption = "Comparison of Iris Species")
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
