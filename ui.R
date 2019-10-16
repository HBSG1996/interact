library(shiny)

ui<-fluidPage(
  titlePanel(title = "interact window!",windowTitle = "Hello shiny"),
  sidebarLayout(
    sidebarPanel(
      h4("sidebarPanel"),
      actionButton(inputId = "ab",label = "actionButton"),
      checkboxInput(inputId = "cb",label = "checkboxInput",value = TRUE),
      checkboxGroupInput(inputId = "cbg",label = "checkboxGroupInput",choices = list("choice1"=1,"choice2"=2),selected = 1),
      numericInput(inputId = "nu",label = "numericInput",value = 10,min = 0,max = 20,step = 2),
      radioButtons(inputId = "rb",label = "radioButtons",choices = c("A"=1,"B"=2,"C"=3),selected = 1,inline = TRUE),
      selectInput(inputId = "sc",label = "selectInput",list("choice1"=1,"choice2"=2),selected = 1,multiple = FALSE),
      sliderInput(inputId = "sd",label = "sliderInput",min = 0,max = 100,value = 50,step = 5),
      width = 4
      ),
    mainPanel(
      h4("mainPanel"),
      textOutput(outputId = "oab"),
      textOutput(outputId = "ocb"),
      textOutput(outputId = "ocbg"),
      textOutput(outputId = "onu"),
      textOutput(outputId = "orb"),
      textOutput(outputId = "osc"),
      textOutput(outputId = "osd")
      ),
    position = "left",
    fluid = FALSE
  )
)
