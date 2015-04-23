library(shiny)
  
shinyUI(fluidPage(
  title = "Wildlife Trends",
  
  plotOutput("plot"),
   
  fluidRow(
    column(3,
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
     
    ),
  
    mainPanel(
      h1("Wildlife Trends"),
      p("The data is captured through the", 
      strong("Wildlife Conservancy Manangement and Monitoring System (Wildlife COMMs)"),
      "which allows NRT rangers to collect detailed information on wildlife numbers and distribution, and carcasses and illegal activities")
      )

)))