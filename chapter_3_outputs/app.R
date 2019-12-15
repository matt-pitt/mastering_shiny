library(shiny)

ui <- fluidPage(
    #questions 3.3.5 1 & 2
        plotOutput("plot", width = "50%",
               height = "100px"),
        plotOutput("plot2", width = "50%",
                  height = "100px"),
    #questions 3.3.5 3
    dataTableOutput("table")
)

server <- function(input, output, session) {
    output$plot <- renderPlot(plot(1:5))
    output$plot2 <- renderPlot(plot(1:5))
    #questions 3.3.5 3
    output$table <- renderDataTable(mtcars, options = list(pageLength = 5, 
                                                           searching = FALSE,
                                                           ordering = FALSE,
                                                           filtering = FALSE))
}

# Run the application 
shinyApp(ui = ui, server = server)
