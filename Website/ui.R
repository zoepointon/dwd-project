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
shinyUI(basicPage(
        # Application title
        titlePanel("Festival Search"),

        # Sidebar with a text input
        textInput('date_from', label='Date start'),
        textInput('date_to', label='Date end'),
        textInput('title', label='Search Title'),
        textInput('artist', label='Search artist'),
        textInput('venue', label='Search venue'),

        textOutput("shows")
))