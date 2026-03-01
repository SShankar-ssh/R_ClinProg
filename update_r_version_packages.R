# Check which R version is installed
getRversion()

# Update R version to the latest R version
# install.packages("installr")
library(installr)
updateR()

#Move the packages from your old R version to the new one
#Update the moved packages
#It will prompt you for each package that can be upgraded. If you want it to upgrade all packages without asking, use ask = FALSE:
update.packages(ask = FALSE)
update.packages(ask = FALSE, checkBuilt = TRUE)

#Verify that all went well
version()
packageStatus()


