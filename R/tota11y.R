#' Use tota11y
#'
#' Include tota11y dependencies. place anywhere in the shiny UI.
#'
#' @importFrom shiny singleton tags
#'
#' @export
use_tota11y <- function(){
  singleton(
    tags$head(
      tags$script(src = "shinya11y-assets/tota11y.js")
    )
  )
}


#' Demo tota11y
#'
#' Run a demo of tota11y.
#'
#' @export
demo_tota11y <- function() {
  shiny::runApp(appDir = system.file("tota11y", package = 'shinya11y', mustWork = TRUE))
}
