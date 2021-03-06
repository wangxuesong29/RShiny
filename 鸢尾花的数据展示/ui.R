library(shiny)
library(ggplot2)

dataset <- iris

shinyUI(pageWithSidebar(
  
  headerPanel("鸢尾花的数据展示"),
  sidebarPanel(
    
    selectInput('x', 'X', names(dataset)),
    selectInput('y', 'Y', names(dataset)[2]),
    selectInput('color', 'Color', c('None', names(dataset))),
    
    checkboxInput('smooth', 'Smooth')
  ),
  
  mainPanel(
    plotOutput('plot'),
    h6("Episode IV", align = "center"),
    h6("A NEW HOPE", align = "center"),
    h5("It is a period of civil war.", align = "center"),
    h4("Rebel spaceships, striking", align = "center"),
    h3("from a hidden base, have won", align = "center"),
    h2("their first victory against the", align = "center"),
    h1("evil Galactic Empire."),
    p("p creates a paragraph of text."),
    p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph.", style = "font-family: 'times'; font-si16pt"),
    strong("strong() makes bold text."),
    em("em() creates italicized (i.e, emphasized) text."),
    br(),
    code("code displays your text similar to computer code"),
    div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
    br(),
    p("span does the same thing as div, but it works with",
      span("groups of words", style = "color:blue"),
      "that appear inside a paragraph."),
    img(src = "r.png")
  )
))