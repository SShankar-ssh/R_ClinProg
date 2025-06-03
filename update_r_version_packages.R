R.version.string
update.packages(ask = FALSE, checkBuilt = TRUE)

#Check that your user name and email are defined. If not, run
usethis::git_sitrep()

#It’s also a good idea to vaccinate. This implements best practice by adding files to your global .gitignore:
usethis::git_vaccinate() 