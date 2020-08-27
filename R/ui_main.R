ui_main <- function() {
  navbarPage(
    title = tags$div(class = "nav_header", 
                     "Main Page"),
    theme = shinytheme("paper"),
    tabPanel(
      tags$div(class = "nav_header", 
               "Data Explorer"),
      column(
        12, 
        column(
          width = 8,
          align = "left", 
          fluidRow(
            # column(
            #   width = 1,
            #   tags$h3(style = "font: 100px Helvetica; font-weight: bold;
            #     letter-spacing: 0px;
            #     text-align: left;
            #     color: #a5c2c2; opacity: 1;
            #     padding: 12px 10px;
            #     margin: 0px 100px 0px 0px;
            #     line-height: 24px; position: fixed", 
            #           "Data Explorer")
            # ), 
            column(
              width = 12, 
              use_vov(),
              vov::fade_in_right(
                duration = "slow", 
                tags$div(id = "data_table_header", 
                         "Data Explorer")
              ),
              tags$aside(
                style = paste0("padding: 5px 65px;", 
                               "margin: -4px 10px 10px 0px"),
                use_cicerone(),
                vov::fade_in_down(
                  delay = 1, 
                actionButton(inputId = "help", 
                             label = "Take a Tour", 
                             icon("question-circle"))
                ),
                vov::fade_in_down(
                  delay = 1, 
                  duration = "slow",
                actionButton(inputId = "change_data_button", 
                             label = "Change", 
                             icon("exchange-alt"))
                ), 
                vov::fade_in_down(
                  delay = 2, 
                  duration = "slow",
                downloadButton(outputId = "download_button", 
                               label = "Download")
                ), 
                vov::fade_in_down(
                  delay = 2, 
                  duration = "slowest",
                actionButton(inputId = "rerun_button", 
                             label = "Rerun", 
                             icon("sync-alt"))
                )
              )
            )
          ), 
          fluidRow(
            column(
              width = 12,
              shiny::tags$aside(
                style = "display: block; position: relative; margin: 0px 0px 0px 0px;", 
                shinycssloaders::withSpinner(
                  reactableOutput("data_table"), 
                  type = 8)
              )
            )
          ), 
          fluidRow(
            column(
              width = 12,
              hr(), tags$br()
            )
          )
        ),
        column(
          width = 4,
          align = "left", 
          fluidRow(
            # column(
            #   width = 1, 
            #   tags$h3(style = "font: 100px Helvetica; font-weight: bold;
            #     letter-spacing: 0px;
            #     text-align: left;
            #     color: #a5c2c2; opacity: 1;
            #     padding: 12px 10px;
            #     margin: 0px 20px 20px 0px;
            #     line-height: 24px; position: fixed", 
            #           "Filters")
            # ), 
            column(
              width = 12, 
              vov::fade_in_right(
                duration = "slow", 
                tags$div(id = "filter_header", 
                         "Filters")
              ), 
              tags$aside(
                style = paste0("padding: 5px 95px;", 
                               "margin: -4px 10px 10px 0px"),
                vov::fade_in_down(
                  delay = 1, 
                  actionButton(inputId = "apply_filters_button", 
                               label = "Apply", 
                               icon("filter"))
                )
              )
            )
          ), 
          fluidRow(
            column(
              width = 12,
              shiny::tags$aside(
                style = "display: block; position: relative; margin: 0px 0px 0px 0px;", 
                shinycssloaders::withSpinner(
                  reactableOutput("filter_summary_table"), 
                  type = 8)
              )
            )
          ), 
          fluidRow(
            column(
              width = 12,
              hr(), tags$br()
            )
          )
        )
      )
    ),
    tabPanel(
      tags$div(class = "nav_header", 
               "About this app")
    ),
    footer = column(
      width = 12,
      align = "center",
      tags$p("Made with 💕 by the", tags$a("r4fun", href = "https://github.com/r4fun"), "group")
    )
  )
}
