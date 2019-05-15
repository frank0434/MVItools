
#' graph_info
#'
#' Grab width and height of the image. Use these to calculate offset positions for x and y axis to stamp the logo.
#'
#' @param list A list object that keep all the
#' @param logo the magick image object of the logo
#'
#' @return A list has position coordinates for stampping the logo.
#'
#' @family water_markers
#'
#' @import
#' magick
#'
#' @examples
#' \dontrun{
#' graph_info(list = images,
#'            logo_path = "../../")
#' }
#' @export

graph_info <- function(list, logo){

  logo_info <- magick::image_info(logo)

  l <- lapply(list, function(img){
    info <- magick::image_info(img)
    w = info$width/2 - logo_info$width
    h = info$height/2 - logo_info$height
    return(c(w, h))
  })
}
# l <- graph_read(sitename = "Tayler", data_source = "example", pattern = ".png$")
# ll <- graph_info(l, "c:/Data/MVI-FarmModelling/playground/PFR-web.jpg")

