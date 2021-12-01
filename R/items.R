#Set data collection widgets
subject_id <- shiny::textInput("subject_id", "Enter Subject ID")
task_id <- shiny::textInput("task_id", "Enter Task ID")
e_p <- shiny::radioButtons(
  inputId = "e_p",
  label = "",
  choices = c("Effort",
              "Performance"),
  selected = character(0),
  inline = TRUE
)
t_f <- shiny::radioButtons(
  inputId = "t_f",
  label = "",
  choices = c("Temporal Demand",
              "Frustration"),
  selected = character(0),
  inline = TRUE
)
t_e <- shiny::radioButtons(
  inputId = "t_e",
  label = "",
  choices = c("Temporal Demand",
              "Effort"),
  selected = character(0),
  inline = TRUE
)
pd_f <- shiny::radioButtons(
  inputId = "pd_f",
  label = "",
  choices = c("Physical Demand",
              "Frustration"),
  selected = character(0),
  inline = TRUE
)
p_f <- shiny::radioButtons(
  inputId = "p_f",
  label = "",
  choices = c("Performance",
              "Frustration"),
  selected = character(0),
  inline = TRUE
)
pd_t <- shiny::radioButtons(
  inputId = "pd_t",
  label = "",
  choices = c("Physical Demand",
              "Temporal Demand"),
  selected = character(0),
  inline = TRUE
)
pd_p <- shiny::radioButtons(
  inputId = "pd_p",
  label = "",
  choices = c("Physical Demand",
              "Performance"),
  selected = character(0),
  inline = TRUE
)
t_m <- shiny::radioButtons(
  inputId = "t_m",
  label = "",
  choices = c("Temporal Demand",
              "Mental Demand"),
  selected = character(0),
  inline = TRUE
)
f_e <- shiny::radioButtons(
  inputId = "f_e",
  label = "",
  choices = c("Frustration",
              "Effort"),
  selected = character(0),
  inline = TRUE
)
p_m <- shiny::radioButtons(
  inputId = "p_m",
  label = "",
  choices = c("Performance",
              "Mental Demand"),
  selected = character(0),
  inline = TRUE
)
p_t <- shiny::radioButtons(
  inputId = "p_t",
  label = "",
  choices = c("Performance",
              "Temporal Demand"),
  selected = character(0),
  inline = TRUE
)
m_e <- shiny::radioButtons(
  inputId = "m_e",
  label = "",
  choices = c("Mental Demand",
              "Effort"),
  selected = character(0),
  inline = TRUE
)
m_pd <- shiny::radioButtons(
  inputId = "m_pd",
  label = "",
  choices = c("Mental Demand",
              "Physical Demand"),
  selected = character(0),
  inline = TRUE
)
e_pd <- shiny::radioButtons(
  inputId = "e_pd",
  label = "",
  choices = c("Effort",
              "Physical Demand"),
  selected = character(0),
  inline = TRUE
)
f_m <- shiny::radioButtons(
  inputId = "f_m",
  label = "",
  choices = c("Frustration",
              "Mental Demand"),
  selected = character(0),
  inline = TRUE
)

rate_m <- shiny::sliderInput(inputId = 'rate_m',
            label = htmltools::div(style='width:300px;',
                    htmltools::div(style='float:left;', 'Low'),
                    htmltools::div(style='float:right;', 'High')),
            min = 0, max = 100, step = 5, value = 0, width = '300px')

rate_pd <- shiny::sliderInput(inputId = 'rate_pd',
                             label = htmltools::div(style='width:300px;',
                                     htmltools::div(style='float:left;', 'Low'),
                                     htmltools::div(style='float:right;', 'High')),
                             min = 0, max = 100, step = 5, value = 0, width = '300px')

rate_t <- shiny::sliderInput(inputId = 'rate_t',
                              label = htmltools::div(style='width:300px;',
                                      htmltools::div(style='float:left;', 'Low'),
                                      htmltools::div(style='float:right;', 'High')),
                              min = 0, max = 100, step = 5, value = 0, width = '300px')

rate_p <- shiny::sliderInput(inputId = 'rate_p',
                             label = htmltools::div(style='width:300px;',
                                     htmltools::div(style='float:left;', 'Good'),
                                     htmltools::div(style='float:right;', 'Poor')),
                             min = 0, max = 100, step = 5, value = 0, width = '300px')

rate_e <- shiny::sliderInput(inputId = 'rate_e',
                             label = htmltools::div(style='width:300px;',
                                     htmltools::div(style='float:left;', 'Low'),
                                     htmltools::div(style='float:right;', 'High')),
                             min = 0, max = 100, step = 5, value = 0, width = '300px')


rate_f <- shiny::sliderInput(inputId = 'rate_f',
                             label = htmltools::div(style='width:300px;',
                                     htmltools::div(style='float:left;', 'Low'),
                                     htmltools::div(style='float:right;', 'High')),
                             min = 0, max = 100, step = 5, value = 0, width = '300px')

