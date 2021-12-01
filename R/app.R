ntlxApp <- function(){
  ui <- shiny::fluidPage(
    title = "NASA Task Load Index",
    # CSS ----
    # stop the default input containers being 300px, which is ugly
    #tags$head(
    #  tags$style(HTML("
    #                .shiny-input-container:not(.shiny-input-container-inline) {
    #                  width: 100%;
    #                  max-width: 100%;
    #                }
    #                "))
    #),

    # App title ----
    #h3("NASA Task Load Index"),

    #p(""),

    shiny::fluidRow(
      shiny::column(width=6, subject_id),
      shiny::column(width=6, task_id)
    ),
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
    rate_m,
    rate_pd,
    rate_t,
    rate_p,
    rate_e,
    rate_f,

    shiny::actionButton("submit", "Submit"),
    #action_demo
  )

  # Reactive functions ----
  server = function(input, output, session) {

    # When the Submit button is clicked, save the form data
    observeEvent(input$submit, {
      saveData(input)
      #resetForm(session)

      # thank the user
      n_responses <- length(list.files(outputDir))
      response <- "Thank you for completing the NTLX!  Close the window and rerun ntlxApp() to continue data collection."
      showNotification(response, duration = 0, type = "message")
    })

    # clear the fields
    #observeEvent(input$clear, {
    #  resetForm(session)
    #})
  }

  shiny::shinyApp(ui, server)
}
