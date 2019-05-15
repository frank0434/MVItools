

#' graph_output
#'
#' @param markered_graphs A list that has all the markered graphs
#' @param output_foler A charater string for the output folder name
#' @param sitename One of the six sitenames
#'
#' @return A list has nothing in it but graphs should be output into their folders
#'
#' @family water_markers
#' @import
#' magick
#' here
#'
#' @examples
#' \dontrun{
#' graph_output(markered_graphs = ll,
#'              output_foler = "markered",
#'              sitename = "Tayler")
#'}
#' @export
graph_output <- function(markered_graphs, output_foler, sitename){
  lapply(names(markered_graphs), function(x){
    name_raw <- regmatches(x,regexpr(paste0(sitename,".*[^\\.jpeg]"), x))
    folderstr <- unlist(strsplit(name_raw, split =  "/"))
    sep <- "/"
    dir_check2 <- dir.exists(here::here(output_foler,sitename,sep, folderstr[[2]]))
    if(dir_check2 == FALSE) dir.create(here::here(output_foler, sitename,sep, folderstr[[2]]),recursive = TRUE)

    cat("Outputting", name_raw, "\r\n")

    #output
    magick::image_write(image =  markered_graphs[[x]], path = file.path(here::here(output_foler, paste0(sitename,sep, folderstr[[2]],sep,folderstr[[3]],".png"))), format = "png")

  })


}
