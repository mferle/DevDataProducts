shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Prediction of 21k race finish time"),
    sidebarPanel(
      numericInput('distance', "Training distance in km", 10, min = 1, max = 100, step = 1),
      numericInput('timeMin', "Training time in min", 60, min = 1, max = 1000, step = 1),
      radioButtons("trnType", "Training type", c("Short speed" = "1", "Long distance" = "2")),
      submitButton('Submit'),
      h5("For more documentation about the app please visit this ", a("link", href="index.html"))
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('For distance you entered'),
      verbatimTextOutput("inputValue1"),
      h4('For time you entered'),
      verbatimTextOutput("inputValue2"),
      h4('For training type you entered'),
      verbatimTextOutput("inputValue3"),
      h4('Which resulted in a predicted 21k race time in hours : minutes'),
      verbatimTextOutput("prediction")
    )
  )
)