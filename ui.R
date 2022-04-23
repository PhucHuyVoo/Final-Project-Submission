library(quantmod)
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        titlePanel(
                
                h1("Introducing War for Oil", align = "center")
        ),
        sidebarLayout(
                sidebarPanel(
                        h4("Crude oil"),
                        p("After Ukraine, how will the world replace Russia's oil products?"),

                        img(src = "russian.png", height = 250, width = 350),
                        titlePanel("Russia-Ukraine crisis"),
                        p("Concerns about the Ukraine conflict fanning inflation and denting economic growth dominated trading in the second half of the week "),
                        
                        p("Implications for global oil markets"),
                        helpText("Select a event to examine, by date. Significant dates at the bottom of the page" ),
                        
                        textInput("symb", "Symbol", "Russian Oils Price"),
                        
                        dateRangeInput("dates",
                                       "Date range",
                                       start = "2021-01-1",
                                       end = as.character(Sys.Date())),
                        
                        br(),
                        br(),
                        img(src = "trump.png", height = 250, width = 300)
                        
                ),
                
                
                
                mainPanel(  
                        HTML('<iframe width="500" height="300" src="https://www.youtube.com/watch?v=VuK5_2JpJf4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
                        plotOutput("plot"),
                        
                        
                        
                        h4("Impact of war"),
                        h2("US ban on Russian oil imports"),
                        p(" The Biden administration banned Russian oil imports to the US. What could the administration do to lower gas prices in the US?."),
                        HTML('<iframe width="400" height="225" src="https://www.youtube.com/watch?v=o_avKxu4yBo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
                        
                        p("It is hard to predict which way the situation and markets will go, however it seems that we are poised for a period of high energy prices that are driven by war and combined with tight market fundamentals."), 
                        
                        h4("Some governments may enact steps to buffer consumers from the impact of this rise. Taxes on diesel and gasoline account for more than half of the price paid by customers at the pump in many nations, indicating that there is obviously room for government intervention. However, all (or almost all) of this expense will have to be borne by consumers. Unfortunately, it appears like we are in for a lengthy time of high energy costs."),
                        
                        
                )
        )
        
) )