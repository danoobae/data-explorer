alert_tour <- function(session) {
  confirmSweetAlert(
    session = session,
    inputId = "first_time",
    title = "Welcome! First time using the app?",
    btn_labels = c("No, I've been here before!", "Yes, take a tour!")
  )
}

alert_tourFilter <- function(session) {
  confirmSweetAlert(
    session = session,
    inputId = "first_timeFilter",
    title = "Welcome! First time using the filter function?",
    btn_labels = c("No, I've been here before!", "Yes, take a tour!")
  )
}
