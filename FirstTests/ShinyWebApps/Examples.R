library(shiny)

runShinyExample <- function(x){
  if (x==1) runExample("01_hello")      # a histogram
  if (x==2) runExample("02_text")       # tables and data frames
  if (x==3) runExample("03_reactivity") # a reactive expression
  if (x==4) runExample("04_mpg")        # global variables
  if (x==5) runExample("05_sliders")    # slider bars
  if (x==6) runExample("06_tabsets")    # tabbed panels
  if (x==7) runExample("07_widgets")    # help text and submit buttons
  if (x==8) runExample("08_html")       # Shiny app built from HTML
  if (x==9) runExample("09_upload")     # file upload wizard
  if (x==10) runExample("10_download")   # file download wizard
  if (x==11) runExample("11_timer")      # an automated timer
}

runShinyExample(1)