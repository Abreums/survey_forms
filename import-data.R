library(tidyverse)
library(googlesheets4)

gs4_deauth()

survey_data <- 
  read_sheet("https://docs.google.com/spreadsheets/d/1mjzq9i4OaTMIgd_BGRYai8aH0re7ES14wglZreOc0Po/edit?usp=sharing") |> 
  janitor::clean_names()

survey_data |> glimpse()

