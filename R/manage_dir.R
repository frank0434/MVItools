


#' manage_dir
#'
#' House keeping work.
#'
#' @param data_source source of data
#' @param output_loc output location
#'
#' @return logic vector. true for successfuly creat directory(ies); FALSE otherwise
#'
#' @family water_markers
#' @import
#' here
#'
#' @examples
#' \dontrun{
#' manage_dir(data_souce = "/Analysis/IndividualSiteOutputs/",
#'            output_loc = "marked_graphes")
#' }
manage_dir <- function(data_source = "./", output_loc = "markered"){


  sitefolders <- list.files(data_source)
  cat("Sites have been found:", sitefolders, "\r\n")


  #folder creating

  dir_check1 <- dir.exists(here::here(output_loc))
  if(dir_check1 == FALSE){
    dir.create(here::here(output_loc))
    lapply(sitefolders, function(x){
      dir_check2 <- dir.exists(here::here(output_loc,x))
      if(dir_check2 == FALSE)  dir.create(here::here(output_loc,x), recursive = TRUE)
    })
  } else{
    lapply(sitefolders, function(x){
      dir_check2 <- dir.exists(here::here(output_loc,x))
      if(dir_check2 == FALSE)  dir.create(here::here(output_loc,x), recursive = TRUE)
    })
  }

}

