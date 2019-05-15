

#' graph_stamp
#'
#' Compsite graph with PFR logo.
#'
#' @param graphs A stack of graphs stored in a list.
#' @param logo_info The processed logo magick image object.
#' @param logo An adjusted logo image. Must be a magick-image object
#'
#'
#' @return A list of markered graph
#'
#' @family water_markers
#'
#' @import
#' magick
#' purrr
#'
#' @examples
#' lll <- graph_stamp(graphs = l,logo_info = ll, logo = logo)
graph_stamp <- function(graphs, logo_info, logo){

  l <- purrr::map2(graphs, logo_info, function(.x, .y){
    cat("Please be patient, this is not my fault. You feed me too many graphs.\r\n")

    marked <- magick::image_composite(.x, logo, offset = paste0("+", .y[1], "+", .y[2]))
  })
}
