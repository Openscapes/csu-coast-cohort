## create_github_demo_pub.R. 
## This will become a function in our `openscapesr` package:
## github.com/openscapes/openscapesr
## To be iterated.  

library(tidyverse)
library(datapasta) # install.packages("datapasta")

file_in <-  "julie.md"
text_template <- read_lines(file_in)

## use `datapasta` addin to vector_paste these names formatted from the spreadsheet!
cohort <- c("Jeremy", "Brenda", "James", "Whitney", "Matthew", "Karina", "Mehak", "Carl", "Ryan", "Liz", "Benjamin", "Erin", "Grant", "Marissa", "Yi-Hui", "Nyssa", "Danielle", "Robert (RJ)", "Amanda", "Jamie", "Cheryl", "Juliana", "Katrina", "Melissa", "Arie", "Holly", "Caroline", "Kerry", "Emily", "Brian", "Haupt", "Wickliff", "Pureco", "Haberman", "Dawson", "Gabrielle")

  
cohort <- str_to_lower(cohort)

for (champion in cohort) {
  file_out <- glue::glue(champion, ".md")
  text_write <- write_lines(text_template, file_out)
  
} 



