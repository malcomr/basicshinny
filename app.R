library(shiny)
require(shinydashboard)
library(ggplot2)
library(dplyr)

recommendation <- read.csv('recommendation.csv',stringsAsFactors = F,header=T)


source(file = "basicapp/ui_dashboard.R", LOCAL = TRUE)



ui <- dashboardPage(
    
    header,
    
    sidebar,
    
    body
    
    
    # dashboardHeader(title = "Basic Dashboard"),
    # dashboardSidebar(),
    # dashboardBody()
)

# create the server functions for the dashboard  
server <- function(input, output) { 
    
    source(file = "basicapp/server.R", local = TRUE)
    
}


shinyApp(ui, server)
