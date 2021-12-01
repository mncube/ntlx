#' enterOutputPath
#'
#' @param path Enter path where you want to store output
#'
#' @return path for output as a named object called outputDir
#' @export
#'
#' @examples
#' enterOutputPath(getwd())
enterOutputPath<- function(path){
  outputDir <<- path

}

# Define the fields we want to save from the form
fields <- c("subject_id",
            "task_id",
            "e_p",
            "t_f",
            "t_e",
            "pd_f",
            "p_f",
            "pd_t",
            "pd_p",
            "t_m",
            "f_e",
            "p_m",
            "p_t",
            "m_e",
            "m_pd",
            "e_pd",
            "f_m",
            "rate_m",
            "rate_pd",
            "rate_t",
            "rate_p",
            "rate_e",
            "rate_f")

saveData <- function(input) {
  data <- data.frame(matrix(nrow=1,ncol=0))
  for (x in fields) {
    var <- input[[x]]
    if (length(var) > 1 ) {
      data[[x]] <- list(var)
    } else {
      # all other data types
      data[[x]] <- var
    }
  }
  data$submit_time <- date()

  for(i in 1:nrow(data)){
    if(length(data$e_p[[i]] > 1) |
       length(data$t_f[[i]] > 1) |
       length(data$t_e[[i]] > 1) |
       length(data$pd_f[[i]] > 1) |
       length(data$p_f[[i]] > 1) |
       length(data$pd_t[[i]] > 1) |
       length(data$pd_p[[i]] > 1) |
       length(data$t_m[[i]] > 1) |
       length(data$f_e[[i]] > 1) |
       length(data$p_m[[i]] > 1) |
       length(data$p_t[[i]] > 1) |
       length(data$m_e[[i]] > 1) |
       length(data$m_pd[[i]] > 1) |
       length(data$e_pd[[i]] > 1) |
       length(data$f_m[[i]] > 1) ){
       #stop("One of the Sources-of-Workload Comparison Cards has more than one selection. Please stop the ntlxApp and redo the assessment")
    } else {
      next
    }
  }

  # Create a unique file name
  fileName <- sprintf(
    "%s_%s.rds",
    as.integer(Sys.time()),
    digest::digest(data)
  )

  # Write the file to the local system
  saveRDS(
    object = data,
    file = file.path(outputDir, fileName)
  )
}

loadData <- function() {
  # read all the files into a list
  files <- list.files(outputDir, full.names = TRUE)

  if (length(files) == 0) {
    # create empty data frame with correct columns
    field_list <- c(fields, "submit_time")
    data <- data.frame(matrix(ncol = length(field_list), nrow = 0))
    names(data) <- field_list
  } else {
    data <- lapply(files, function(x) readRDS(x))

    # Concatenate all data together into one data.frame
    data <- do.call(rbind, data)
  }

  data
}

