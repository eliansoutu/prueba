library(shiny)
library(dundermifflin)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
  br(),
  br(),
  br(),
  
  column(offset = 5, width = 2,
  actionButton("boton", "Haceme click")
  ),
  

  
  column(offset = 2, width = 8,
         br(),  br(),tableOutput("citaOffice")
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  observeEvent(input$boton, {
    
    output$citaOffice <- renderTable({
      
      get_quote()
      
    })
    
  })
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
