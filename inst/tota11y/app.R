library(shiny)
library(shinya11y)

ui <- fluidPage(

  use_tota11y(),

  titlePanel("Welcome to tota11y"),

  sidebarLayout(
    sidebarPanel(
      tags$p(HTML("<a href='https://khan.github.io/tota11y'>tota11y</a> helps visualize how your site performs with assistive technologies.")),
      tags$p(span("The process of testing for accessibility (a11y) is often tedious and confusing. In many cases, developers must have some prior accessibility knowledge in order to make sense of the results.")),
      tags$p(span("Instead, tota11y aims to reduce this barrier of entry by helping visualize accessibility violations (and successes), while educating on best practices.")),
      tags$h2("Try it!"),
      tags$p(span("tota11y is found in the bottom left corner of this page. Here are some shiny UI elements to try it on."))
    ),
    mainPanel(
      tags$p(HTML("Here's an <a href='javascript:void 0'>informative link about something</a>. Here's another that simply says <a href='javascript:void 0'>click here</a>, which is not helpful to a screen reader.")),
      tags$p("Here's an input without an explicit label:"),
      actionButton("select", label = NULL, icon = icon("check")),
      tags$p("This one looks good:"),
      actionButton("select", label = "Run the model", icon = icon("check")),
      tags$p(HTML("On this background, <span style='color:#888'>this text</span> is too light.")),
      tags$p("This image has no alt attribute, and a screen-reader will likely read off its filename:"),
      img(src='capybara.gif')
    )
  )

)

server <- function(input, output, session) {

}

shinyApp(ui, server)
