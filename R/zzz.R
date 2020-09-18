.onLoad <- function(libname, pkgname){
  path <- system.file("packer", package = "shinya11y")
  shiny::addResourcePath('shinya11y-assets', path)
}
