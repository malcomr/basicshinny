
#ui 





header <- dashboardHeader(title = "Basic Dashboard")  

#Sidebar content of the dashboard
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Visit-us", icon = icon("send",lib='glyphicon'), 
                 href = "https://www.salesforce.com")
    )
)


frow1 <- fluidRow(
    valueBoxOutput("value1")
    ,valueBoxOutput("value2")
    ,valueBoxOutput("value3")
)

frow2 <- fluidRow(
    
    box(
        title = "Revenue per Account"
        ,status = "primary"
        ,solidHeader = TRUE 
        ,collapsible = TRUE 
        ,plotOutput("revenuebyPrd", height = "300px")
    )
    
    ,box(
        title = "Revenue per Product"
        ,status = "primary"
        ,solidHeader = TRUE 
        ,collapsible = TRUE 
        ,plotOutput("revenuebyRegion", height = "300px")
    ) 
    
)



# combine the two fluid rows to make the body
body <- dashboardBody(frow1, frow2)


