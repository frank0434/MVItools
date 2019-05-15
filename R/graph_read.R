

#' graph_read
#'
#' Read multiple graphs and then put water markers on.
#'
#' @param sitename farm name
#' @param data_source path to the folder holds all sites
#' @param extension image file entension
#' @param recursive TURE, look depth into subfolder; FALSE, only one level
#' @param full.names TURE, default, show the full path for image; FALSE, not recommend, show relative path only
#'
#' @return a list of image objects
#' @family water_markers
#'
#' @import
#' magick
#'
#' @examples
#' \dontrun{
#' graph_read(sitename = "Tayler",
#'            data_source,
#'            extension = "*.jpeg$",
#'            recursive = TRUE,
#'            full.names = TRUE)
#' }
graph_read <- function(sitename = "Tayler", data_source, extension = "*.jpeg$", recursive = TRUE, full.names = TRUE ){
  l <- list.files(paste0(data_source, "/", sitename), pattern = tolower(extension), recursive = recursive, full.names = full.names)
  ll <- sapply(l, function(x){
    img <- magick::image_read(x)
  }, simplify = FALSE, USE.NAMES = TRUE)
  # stopifnot(!is.null(ll), "No images have been read in. Check pathes.", local = FALSE)
  cat("Remember to save the output into an object. \r\n")
  return(ll)

}

# l <- graph_read(data_source = "./example/", extension = "*.png$")
# class(LL[[1]])

# L <- list.files(here::here("example","Tayler"), pattern = ".png$", recursive = T, full.names = T)
# lapply(L, function(x){
#   img <- magick::image_read(x)
#
# })
