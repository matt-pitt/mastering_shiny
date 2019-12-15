#chapter 3 activities

library(shiny)

animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

ui <- fluidPage(
    #question 3.2.8 1
    textInput("name", NULL, placeholder = "Your name"),
    #question 3.2.8 2
    sliderInput("dates", "when should we deliver?", 
                min = as.Date("2019-08-09", "%Y-%m-%d"),
                max = as.Date("2019-08-16", "%Y-%m-%d"), 
                value = as.Date("2019-08-10"),
                timeFormat = "%Y-%m-%d"),
    #question 3.2.8 3
    selectInput("select", "Choose an animal",
                choices = list(`Big Animals` = list("dog", "cat"),
                               `Small Animals` = list("mouse", "bird"),
                               `Extras` = list("other", "I hate animals"))),
    #question 3.2.8 4
    sliderInput("numberrange", "choose number",
                min = 0,
                max = 100,
                value = 0,
                step = 5,
                animate = TRUE),
    #question 3.2.8 5 - Steo arguent increases the intervals by that figure.
    numericInput("number", "Select a value", value = 150, min = 0, max = 1000, step = 50)
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
}

# Run the application 
shinyApp(ui = ui, server = server)
