shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Prediction of 21k race finish time"),
    sidebarPanel(
      numericInput('distance', "Today's distance in km", 10, min = 1, max = 100, step = 1),
      numericInput('timeMin', "Today's time in min", 60, min = 1, max = 1000, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('For distance you entered'),
      verbatimTextOutput("inputValue1"),
      h4('For time you entered'),
      verbatimTextOutput("inputValue2"),
      h4('Which resulted in a predicted 21k race time in hours : minutes'),
      verbatimTextOutput("prediction")
    )
  )
)