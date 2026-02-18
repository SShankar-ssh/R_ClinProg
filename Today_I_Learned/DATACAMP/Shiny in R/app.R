source("setup.R")

pkgs <- c("shiny", "ggplot2", "readxl")
install_and_load(pkgs)

# Read the Excel file
babynames <- read_excel("~/Data/babynames.xlsx")


ui <- fluidPage(
  titlePanel("Baby Name Explorer"),
  sidebarLayout(
    sidebarPanel(textInput('name', 'Enter Name', 'David')),
    mainPanel(plotOutput('trend'))
  )
)

server <- function(input, output, session) {
  output$trend <- renderPlot({
    data_name <- subset(
      babynames, name == input$name
    )
    # CODE BELOW: Update to display a line plot of the input name
    ggplot(subset(babynames, name == input$name)) + 
      geom_line(aes(x = year, y = prop, color = sex))
    
  })
}


shinyApp(ui = ui, server = server)
