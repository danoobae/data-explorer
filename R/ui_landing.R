ui_landing <- function() {
  fluidPage(
    div(
      use_vov(),
      class = "landing-container",
      vov::roll_in_left(
        duration = "slow",
      img(src = "data-explorer.png",
          width = "700px", 
          height = "700px")),
      vov::roll_in_right(
        duration = "slow",
        div(
          class = "landing-centered-text",
          HTML("data-<br>explorer")
        )
      ),
      br(),
      vov::fade_in_up(
        duration = "slow",
        div(
          actionButton(inputId = "pick_data_button", 
                       label = "let's go")
        )
      )
    )
  )
}
