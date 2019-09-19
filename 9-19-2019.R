library(readxl)
library(tidyverse)
install.packages('janitor')
library(janitor)

x <- read_xlsx("class_enrollment_summary_by_term_9.19.19.xlsx", skip = 3) %>%
  clean_names() %>%
  filter(course_department == "English") %>%
  select(course_name, total) %>%
  arrange(desc(total)) %>%
  head(1)



