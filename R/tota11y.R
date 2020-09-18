#' Dependencies
#'
#' Include dependencies, place anywhere in the shiny UI.
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
