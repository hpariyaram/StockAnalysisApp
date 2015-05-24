
# ui.R
# Developing Data Products - Course Project 1

library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Analysis App"),
  
  fluidRow(
    column(6, 
           h3("Enter Ticker Symbol"),
           helpText("Select a stock to examine. 
                      Information will be collected from Google finance."),
           textInput("symb", "Symbol", "GOOG")
           
           ),
    column(6,
           h3("Enter a Date Range"),
           helpText("Select a date range for 
                      the stock information to be collected from Google finance."),
           dateRangeInput("dates", 
                          "Date range",
                          start = "2014-01-01", 
                          end = as.character(Sys.Date()))
           )    
  ),

fluidRow(
  
    mainPanel(plotOutput("plot1")),
    mainPanel(plotOutput("plot2"))
    )
  )
)