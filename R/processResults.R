#' processResults
#'
#' @return data frame with raw scores, weights, adjusted scores, and overall weighted workload score for each subject x task combination
#' @export
#'
#' @examples
#' processResults()
processResults <- function(){

  #Get results from the previously specified outputDir
  df <- getResults()

  #Compute weights and raw scores
  df$weight_m <- rowSums(df[-c(1,2)] == "Mental Demand")
  df$weight_pd <- rowSums(df[-c(1,2)] == "Physical Demand")
  df$weight_t <- rowSums(df[-c(1,2)] == "Temporal Demand")
  df$weight_p <- rowSums(df[-c(1,2)] == "Performance")
  df$weight_e <- rowSums(df[-c(1,2)] == "Effort")
  df$weight_f <- rowSums(df[-c(1,2)] == "Frustration")

  #Adjusted Ratings
  df$adj_m  <- df$weight_m*df$rate_m
  df$adj_pd <- df$weight_pd*df$rate_pd
  df$adj_t  <- df$weight_t*df$rate_t
  df$adj_p  <- df$weight_p*df$rate_p
  df$adj_e  <- df$weight_e*df$rate_e
  df$adj_f  <- df$weight_f*df$rate_f

  #Overall Weighted Ratings
  df$overall_weighted_workload_score <- (df$adj_m + df$adj_pd + df$adj_t + df$adj_p + df$adj_e + df$adj_f)/15.0

  #Return results
  df
}
