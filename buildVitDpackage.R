setwd('/home/ywang31/VitDpackage')
library(devtools)
library(roxygen2)
library(knitr)
library(rmarkdown)
#After adding the new functions to R/ and then adding the roxygen2 comments in each .R function file,
#Add LICENSE file
document()
build()
install()
check()

#Add raw data to the package. Create inst/extdata folder and put the raw data in.
document()
build()
#install()
devtools::install(build_vignettes = TRUE) 
check()

system.file('extdata','hathcock.csv',package='VitDpackage')

#Create a Vignette to store Dr. Baggerly's report
devtools::use_vignette('plotHathcock')
devtools::use_vignette('cdcTalkAnnotations')
devtools::use_vignette('fitIomAdultModel')
devtools::use_vignette('fitIomAllModel')
devtools::use_vignette('fitIomOldModel')
devtools::use_vignette('fitIomYoungModel')
devtools::use_vignette('luxwoldaFig')
devtools::use_vignette('wagnerFig')
#Edit the above .Rmd vignette files and then run:
document()
build()
install(build_vignettes = TRUE)
check()

#Restart rstudio and use the following code to check the vignettes created.
library(VitDpackage)
browseVignettes("VitDpackage")

#Share the package on github
