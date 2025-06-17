R.version.string
update.packages(ask = FALSE, checkBuilt = TRUE)

#Check that your user name and email are defined. If not, run
usethis::git_sitrep()

#It’s also a good idea to vaccinate. This implements best practice by adding files to your global .gitignore:
usethis::git_vaccinate() 

## install if needed (do this exactly once):
## install.packages("usethis")

#library(usethis)
#use_git_config(user.name = "Jane Doe", user.email = "jane@example.org")

#updating an expired token
https://forum.posit.co/t/how-to-i-use-a-new-github-pat/112700