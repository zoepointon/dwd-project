#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(RCurl)
library(digest)
library(jsonlite)

# Define server logic
shinyServer(function(input, output) {
        
        api_key <- 'T41Uny0JRsUcSrI6'
        secret_key <- 'HVBX4nvmlIdWnqcFsmi8dYqHjHaF9p6'

        base <- 'https://api.edinburghfestivalcity.com/events'


        events <- eventReactive({input$searchtitle
                                input$searchartist
                                input$searchvenue}, {

                query <- paste0('/events?year=2018&title=', curlEscape(input$searchtitle),
                                '&artist=', curlEscape(input$searchartist),
                                '&venue=', curlEscape(input$searchvenue),
                                '&key=', api_key)
                sig <- hmac(secret_key, query, algo='sha1', serialize = F)
                my_url <- paste0('https://api.edinburghfestivalcity.com', query, '&signature=', sig)
                mydata <- fromJSON(my_url)
                mydata
        })
        
        # output$nshows <- renderText({
                # events()
                #n <- nrow(events())
                #if (is.null(n)) {n <- 0}
                #paste('We found', n, 'shows matching your search term.')
        # })
        output$shows <- renderTable({
                events()$title
        })

})
