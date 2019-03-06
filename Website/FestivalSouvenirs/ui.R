#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Festival Search"),
  
  # Sidebar with a text input
  sidebarLayout(
    sidebarPanel(
       textInput('searchtitle', label='Search Title'),
       textInput('searchartist', label='Search artist'),
       textInput('searchvenue', label='Search venue')
       # actionButton('btn', 'Search')
    ),
    # Show output
    mainPanel(
            textOutput('nshows'),
            tableOutput("shows")
    )
  )
))
