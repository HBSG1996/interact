library(shiny)

server<-function(input,output){
  output$oab <- renderText(
    input$ab
  )
  output$ocb <- renderText(
    input$cb
  )
  output$ocbg <- renderText(
    input$cbg
  )
  output$onu <- renderText(
    input$nu
  )
  output$orb <- renderText(
    input$rb
  )
  output$osc <- renderText(
    input$sc
  )
  output$osd <- renderText(
    input$sd
  )
}