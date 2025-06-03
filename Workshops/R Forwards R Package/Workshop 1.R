#install.packages("devtools")
library(devtools)
has_devel()
packageVersion("usethis")
usethis::git_sitrep()
usethis::git_vaccinate() 
#Create package animalsounds
usethis::create_package("C:/Users/sonak/ClinProg_R/Workshops/R Forwards R Package/animalsounds")