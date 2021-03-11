## @knitr setup


knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

# Set missing NAs to blank
options(knitr.kable.NA = '')

#load R packages
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

## @knitr loadData

data("weather_check", package="fivethirtyeight")

sdat <-  weather_check%>%
  filter(region== params$region)
