subject_id <- shiny::textInput("subject_id", "Enter Subject ID")
task_id <- shiny::textInput("task_id", "Enter Task ID")
e_p <- shinyWidgets::checkboxGroupButtons(
  inputId = "e_p",
  label = "",
  choices = c("Effort",
              "Performance")
)
t_f <- shinyWidgets::checkboxGroupButtons(
  inputId = "t_f",
  label = "",
  choices = c("Temporal Demand",
              "Frustration")
)
t_e <- shinyWidgets::checkboxGroupButtons(
  inputId = "t_e",
  label = "",
  choices = c("Temporal Demand",
              "Effort")
)
pd_f <- shinyWidgets::checkboxGroupButtons(
  inputId = "pd_f",
  label = "",
  choices = c("Physical Demand",
              "Frustration")
)
p_f <- shinyWidgets::checkboxGroupButtons(
  inputId = "p_f",
  label = "",
  choices = c("Performance",
              "Frustration")
)
pd_t <- shinyWidgets::checkboxGroupButtons(
  inputId = "pd_t",
  label = "",
  choices = c("Physical Demand",
              "Temporal Demand")
)
pd_p <- shinyWidgets::checkboxGroupButtons(
  inputId = "pd_p",
  label = "",
  choices = c("Physical Demand",
              "Performance")
)
t_m <- shinyWidgets::checkboxGroupButtons(
  inputId = "t_m",
  label = "",
  choices = c("Temporal Demand",
              "Mental Demand")
)
f_e <- shinyWidgets::checkboxGroupButtons(
  inputId = "f_e",
  label = "",
  choices = c("Frustration",
              "Effort")
)
p_m <- shinyWidgets::checkboxGroupButtons(
  inputId = "p_m",
  label = "",
  choices = c("Performance",
              "Mental Demand")
)
p_t <- shinyWidgets::checkboxGroupButtons(
  inputId = "p_t",
  label = "",
  choices = c("Performance",
              "Temporal Demand")
)
m_e <- shinyWidgets::checkboxGroupButtons(
  inputId = "m_e",
  label = "",
  choices = c("Mental Demand",
              "Effort")
)
m_pd <- shinyWidgets::checkboxGroupButtons(
  inputId = "m_pd",
  label = "",
  choices = c("Mental Demand",
              "Physical Demand")
)
e_pd <- shinyWidgets::checkboxGroupButtons(
  inputId = "e_pd",
  label = "",
  choices = c("Effort",
              "Physical Demand")
)
f_m <- shinyWidgets::checkboxGroupButtons(
  inputId = "f_m",
  label = "",
  choices = c("Frustration",
              "Mental Demand")
)
rate_m <- shiny::sliderInput(
  "rate_m",
  "MENTAL DEMAND",
  min = 0, max = 100, step = 5, value = 0
)
rate_pd <- shiny::sliderInput(
  "rate_pd",
  "PHYSICAL DEMAND",
  min = 0, max = 100, step = 5, value = 0
)
rate_t <- shiny::sliderInput(
  "rate_t",
  "TEMPORAL DEMAND",
  min = 0, max = 100, step = 5, value = 0
)
rate_p <- shiny::sliderInput(
  "rate_p",
  "PERFORMANCE",
  min = 0, max = 100, step = 5, value = 0
)
rate_e <- shiny::sliderInput(
  "rate_e",
  "EFFORT",
  min = 0, max = 100, step = 5, value = 0
)
rate_f <- shiny::sliderInput(
  "rate_f",
  "FRUSTRATION",
  min = 0, max = 100, step = 5, value = 0
)
action_demo <- shiny::actionButton("clear", "Clear Form")
resetForm <- function(session) {
  shiny::updateTextInput(session, "subject_id", value = "")
  shiny::updateTextInput(session, "task_id", value = "")
  shinyWidgets::updateCheckboxGroupButtons(session, e_p, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, t_f, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, t_e, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, pd_f, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, p_f, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, pd_t, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, pd_p, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, t_m, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, f_e, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, p_m, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, p_t, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, m_e, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, m_pd, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, e_pd, selected = NULL)
  shinyWidgets::updateCheckboxGroupButtons(session, f_m, selected = NULL)
  shiny::updateSliderInput(session, "rate_m", value = 0)
  shiny::updateSliderInput(session, "rate_pd", value = 0)
  shiny::updateSliderInput(session, "rate_t", value = 0)
  shiny::updateSliderInput(session, "rate_p", value = 0)
  shiny::updateSliderInput(session, "rate_e", value = 0)
  shiny::updateSliderInput(session, "rate_f", value = 0)
}
