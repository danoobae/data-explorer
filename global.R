library(shiny)
library(shinyjs)
library(shinyWidgets)
library(shinythemes)
library(waiter)
library(reactable)
library(dplyr)
library(shinycssloaders)
library(openxlsx)
library(sever)
library(cicerone)
library(glue)
library(vov)

utils <- list.files("R", full.names = TRUE)
invisible(lapply(utils, source))

disconnected <- sever_default(
  title = "😭",
  subtitle = p("Your session ended!", br("This can happen if you stepped away for awhile or if the application crashed.")),
  button = "Reconnect",
  button_class = "info"
)

config <- list(
  data_choices = list.files("data")
)


# Define steps in the integrated and interactive application help guide
guide <- Cicerone$
  new()$
  # Step: OpCo Selection
  step(
    el = "data_table",
    title = "Want a preview?", 
    description = "Here is a preview of all the data."
  )$
  # Step: OpCo Selection
  step(
    el = "apply_filters_button",
    title = "Want to apply filters?",
    description = "Click this button to choose columns you would like to filter on."
  )$
  # Step: OpCo Selection
  step(
    el = "filter_summary_table",
    title = "What filters are active?",
    description = "Here is where you can view all the filters that were applied."
  )$
  # Step: OpCo Selection
  step(
    el = "change_data_button",
    title = "Looking for different data?",
    description = "Click this button to choose a different dataset to load."
  )$
  # Step: OpCo Selection
  step(
    el = "download_button",
    title = "Ready to download?",
    description = "Click this button to download the data."
  )$
  # Step: OpCo Selection
  step(
    el = "rerun_button",
    title = "Want to copy a previous report?",
    description = "Click this button to upload a previous report as a filtering template."
  )

# Define steps in the integrated and interactive application help guide
guidefilter <- Cicerone$
  new(opacity = 0,stage_background = "#ffffff00")$
  # Step: OpCo Selection
  step(
    el = "filter_select",
    title = "Start here!", 
    description = "Use the dropdown list to find and select the columns you would like to use."
  )$
  # Step: OpCo Selection
  step(
    el = "render_filters_button",
    title = "Next step:",
    description = "Click the 'CREATE FILTER' button to pull all the columns below so you can assign values."
  )$
  # Step: OpCo Selection
  step(
    el = "confirm_filter_modal",
    title = "All done?",
    description = paste0("Click the 'APPLY' button to incorporate all the filter criteria you set. ",
                         "If you need to add or delete columns, feel free to select/deselect in the drop down list. ", 
                         "Remember to click the 'CREATE FILTER' button to update your filter columns list.")
  )
