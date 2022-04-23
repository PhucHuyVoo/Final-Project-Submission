library(shiny)

# Define server logic required to draw a histogram
shinyServer(
        function(input, output) {
                
                dataInput <- reactive({
                        getSymbols(input$symb, src = "Russian",
                                   from = input$dates[1],
                                   to = input$dates[2],
                                   auto.assign = FALSE)
                })
                
                output$plot <- renderPlot({
                        
                        chartSeries(dataInput(), theme = chartTheme("white"), show.grid = TRUE,
                                    type = "line", TA = NULL)
                })
                
        })