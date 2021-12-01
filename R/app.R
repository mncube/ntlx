#' ntlxApp
#'
#' @return An HTML widget with the NASA Task Load Index data collection sheet
#' @export
#'
#' @examples
#' ntlxApp()
ntlxApp <- function(){
  ui <- shiny::fluidPage(
    title = "NASA Task Load Index",

    # App title ----
    htmltools::h1("NASA Task Load Index"),

    shiny::fluidRow(
      shiny::column(width=6, subject_id),
      shiny::column(width=6, task_id)
    ),
    htmltools::h3("Sources-of-Workload Comparison Cards"),
    e_p,
    t_f,
    t_e,
    pd_f,
    p_f,
    pd_t,
    pd_p,
    t_m,
    f_e,
    p_m,
    p_t,
    m_e,
    m_pd,
    e_pd,
    f_m,
    htmltools::h3("Rating Sheet"),
    htmltools::h5("MENTAL DEMAND"),
    rate_m,
    htmltools::h5("PHYSICAL DEMAND"),
    rate_pd,
    htmltools::h5("TEMPORAL DEMAND"),
    rate_t,
    htmltools::h5("PERFORMANCE"),
    rate_p,
    htmltools::h5("EFFORT"),
    rate_e,
    htmltools::h5("FRUSTRATION"),
    rate_f,

    shiny::actionButton("submit", "Submit"),
    #action_demo
  )

  # Reactive functions ----
  server = function(input, output, session) {

    # When the Submit button is clicked, save the form data
    observeEvent(input$submit, {
      saveData(input)

      # thank the user
      n_responses <- length(list.files(outputDir))
      response <- "Thank you for completing the NTLX!  Close the window and rerun ntlxApp() to continue data collection."
      showNotification(response, duration = 0, type = "message")
    })


  }

  shiny::shinyApp(ui, server)
}
