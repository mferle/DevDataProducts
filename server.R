predictedTime <- function(d, t, y) {
    if (y == "1") distFactor = 1.08 else distFactor = 0.92
    rt <- (t / d) * 21 * distFactor
    h <- floor(rt/60)
    m <- round(rt - 60*h)
    return(paste(formatC(h, width=2, flag="0"), ":", formatC(m, width=2, flag="0")))
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$distance})
    output$inputValue2 <- renderPrint({input$timeMin})
    output$inputValue3 <- renderPrint({if (input$trnType == "1") "Short speed" else "Long distance"})
    output$prediction <- renderPrint({predictedTime(input$distance, input$timeMin, input$trnType)})
  }
)