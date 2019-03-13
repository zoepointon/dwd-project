#
# V2

library(shiny)
library(RCurl)
library(digest)
library(jsonlite)

# Define server logic
shinyServer(function(input, output) {
        
        api_key <- 'T41Uny0JRsUcSrI6'
        secret_key <- 'HVBX4nvmlIdWnqcFsmi8dYqHjHaF9p6'

        base <- 'https://api.edinburghfestivalcity.com/events'


        events <- eventReactive({input$date_from
                                input$date_to
                                input$title
                                input$artist
                                input$venue}, {
                                        
                date_from <- ifelse(input$date_from=='', '', 
                                    paste0('&date_from=', curlEscape(input$date_from)))
                date_to <- ifelse(input$date_to=='', '', 
                                    paste0('&date_to=', curlEscape(input$date_to)))
                artist <- ifelse(input$artist=='', '', 
                                    paste0('&artist=', curlEscape(input$artist)))
                venue <- ifelse(input$venue=='', '', 
                                    paste0('&venue=', curlEscape(input$venue)))
                title <- ifelse(input$title=='', '', 
                                    paste0('&title=', curlEscape(input$title)))

                query <- paste0('/events?year=2018',
                                # date_from, date_to, 
                                artist, venue, title,
                                '&key=', api_key)
                sig <- hmac(secret_key, query, algo='sha1', serialize = F)
                myurl <- paste0('https://api.edinburghfestivalcity.com', query, '&signature=', sig)
                mydata <- fromJSON(myurl)
                mydata
        })
        
        output$eventoutput <- renderUI({
                ev <- events()[1,]
                # ev$title
                
                div(
                        div(class='card-items',
                            div(class='card-image', img(src='img/event-image.jpg')),
                            div(class='card-text', h2(class='date', ev$performances[[1]]$start),
                                     h2(class='title', ev$title),
                                     h2(class='artist', ev$artist),
                                     h2(class='venue', ev$venue.name)
                                     )
                        ),
                        tags$button(class='card-button', '+ select')
                )
        })

})
