#chapter 2 activities
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    textInput("name", "What's your name?"),
    textOutput("greeting")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$greeting <- renderText({
        paste0("Hello ", input$name, " I like Buster more than you.")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)


# Define UI for application that draws a histogram
ui <- fluidPage(
    sliderInput("x", "If x is", min = 1, max = 50, value = 30),
    sliderInput("y", "and y is", min = 1, max = 50, value = 5),
    "then, (x * y) is", textOutput("product1"),
    "and, (x * y) + 5 is", textOutput("product_plus5"),
    "and (x * y) + 10 is", textOutput("product_plus10")
)

server <- function(input, output, session) {
    product <- reactive({input$x * input$y})
  
    output$product1 <- renderText( 
        product()
    )
        
    output$product_plus5 <- renderText( 
        product() + 5
    )
    
    output$product_plus10 <- renderText(
        product() + 10
    )
}

shinyApp(ui = ui, server = server)