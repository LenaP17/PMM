library(tidyverse)

daten <- read_csv("data/betriebsdaten.csv") |>
mutate(iok = ifelse(is.na(masse_mm), NA, ifelse(round(abs(masse_mm-10),10)
                                                 > 15, "ausserhalb", "in_Toleranz")))
