#workshop 1

#install.packages("devtools")
#install.packages("usethis")


library(devtools)
has_devel()
packageVersion("usethis")
usethis::git_sitrep()
usethis::git_vaccinate() 

#Create package animalsounds
usethis::create_package("C:/Users/sonak/ClinProg_R/Workshops/R Packages/R Forwards R Package/animalsounds")

#Make your package a git repo( create a .Rproj files)
usethis::use_git()
#This takes a local project, creates an associated repo on GitHub, adds it to your local repo as the “origin remote”, and makes an initial “push” to synchronize.
#To create a copy on GitHub we use 

usethis::use_github()

#Create a new R file in your package called animal_sounds.R
usethis::use_r("animalsounds")

# Create a matching test file
usethis::use_test("animalsounds")

# Workshop 2
# Write documentation


#get all functions in the stat they are
devtools::load_all()

devtools::documentation()

??animalsounds

??admiral



#Add some details to the help page for animal_sounds(), with a link to paste0() and some markdown syntax.
#Add a link to a function from a package you don’t have installed (perhaps basemodels::dummy_classifier()).
#Run devtools::document() and check the link in the help page. What happens?
##  Run devtools::check(). Does the link cause problems?
#  Delete the link to the package you don’t have installed and run devtools::document() again.
#Commit all your changes to the git repo.


#Use use_package() to add rlang and cli to Imports.
#Update animal_sounds() to use is_character() to check the arguments and cli_abort to throw an informative error if necessary, using :: to fully qualify the function calls.
#Load all and try giving animal_sounds() invalid inputs for animal and/or sound.
#Commit your changes to git.
#Push your commits for this session.