predictedTime <- function(d, t) {
    rt <- (t / d) * 21
    h <- floor(rt/60)
    m <- round(rt - 60*h)
    return(paste(formatC(h, width=2, flag="0"), ":", formatC(m, width=2, flag="0")))
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$distance})
    output$inputValue2 <- renderPrint({input$timeMin})
    output$prediction <- renderPrint({predictedTime(input$distance, input$timeMin)})
  }
)