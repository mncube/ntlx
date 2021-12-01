#' getResults
#'
#' @return A data frame with all ntlx results located in the directory specified
#' in the enterOutputPath call
#' @export
#'
#' @examples
#' getResults()
getResults <- function(){
  as.data.frame(loadData())
}
