library(shiny)
  
shinyUI(fluidPage(
  title = "Wildlife Trends",
  
  sidebarLayout(
    sidebarPanel(
      fluidRow(
        column(12,
           selectInput("select", label = h3("Select Species"), 
                       choices = list("Lion" = 1, 
                                      "Eland" = 2,
                                      "Elephant" = 3,
                                      "Giraffe" = 4,
                                      "Grevy's Zebra" = 5,
                                      "Hirola" = 6,
                                      "Oryx"=7,
                                      "Wilddog"=8), selected = 1),
           br(),
      sliderInput(label="Year","Year",  
                  min = 2010, max = 2015,value = 1, sep="")
     
    ))),
  
    mainPanel(
      fluidRow(column(12 ,
      h1("Wildlife Species Sightings"),
      p("The data is captured through the", 
      strong("Wildlife Conservancy Manangement and Monitoring System (Wildlife COMMs)"),
      "which allows NRT rangers to collect detailed information on wildlife numbers and distribution, and carcasses and illegal activities")
      ),
      br(),
    tabsetPanel(
      tabPanel("Plot", plotOutput("plot")), 
      tabPanel("Summary", verbatimTextOutput("summary")), 
      tabPanel("Table", tableOutput("table"))
    )
)))))