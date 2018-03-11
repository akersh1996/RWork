# Examples from
# https://github.com/rstudio/shiny-examples

#if (!require(devtools))
#  install.packages("devtools")
# devtools::install_github("rstudio/leaflet")
# The above doesn't work on my ubuntu environment but the examples still appear to work

runShinyExample<- function(x){
  if (x==1) shiny::runGitHub("rstudio/shiny-examples", subdir="081-widgets-gallery")
  # Next example doesnt work
  if (x==2) shiny::runGitHub("rstudio/shiny-examples", subdir="117-shinythemes")
  if (x==3) shiny::runGitHub("rstudio/shiny-examples", subdir="027-absolutely-positioned-panels")
  if (x==4) shiny::runGitHub("rstudio/shiny-examples", subdir="063-superzip-exampler")
  
}

runShinyExample(3)