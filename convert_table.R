library(readr)
library(glue)
library(dplyr)

the_file <- read_csv("centr_impact-weightings.csv", col_names = TRUE) |>
  mutate(component = glue("| {component}")) |>
  mutate(factor = glue(" | {factor}")) |>
  mutate(descriptor = glue(" | {descriptor}")) |>
  mutate(salience = glue(" | {salience}")) |>
  mutate(weighting = glue(" | {weighting} |"))
the_file
write_tsv(the_file, "centr_impact-weightings.txt")
