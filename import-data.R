library(tidyverse)
library(janitor)
library(googlesheets4)

gs4_deauth()

survey_data <- 
  read_sheet("https://docs.google.com/spreadsheets/d/1mjzq9i4OaTMIgd_BGRYai8aH0re7ES14wglZreOc0Po/edit?usp=sharing") 

# survey_data |> 
#   write_rds("survey-data.rds")

surv <- 
  survey_data |> 
  pivot_longer(cols = -c(`Carimbo de data/hora`),
               names_to = "question",
               values_to = "answer")
surv |> 
  ggplot(aes(x = answer)) +
  geom_bar() +
  facet_wrap(~ question, ncol = 1) 

