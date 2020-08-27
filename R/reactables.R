reactable.theme <- reactableTheme(
  headerStyle = list("&:hover[aria-sort]" = list(background = "hsl(0, 0%, 96%)"),
                     "&[aria-sort='ascending'], &[aria-sort='descending']" = list(background = "hsl(0, 0%, 96%)"),
                     borderColor = "#555"), 
  highlightColor = "hsl(189, 80%, 95%)"
)

reactable_data <- function(.data) {
  reactable(
    data = .data,
    theme = reactable.theme, 
    style = "height: 80vh;",
    sortable = T,
    showSortable = F,
    resizable = T,
    wrap = T,
    filterable = T,
    pagination = T,
    showPagination = T,
    paginationType = "jump",
    showPageSizeOptions = T,
    highlight = T,
    outlined = T,
    defaultColDef = colDef(
      header = function(value) gsub(".", " ", value, fixed = TRUE),
      align = "center",
      maxWidth = 200,
      headerStyle = list(background = "#f7f7f8")
    )
  )
}

reactable_filter_summary <- function(.data) {
  reactable(
    data = .data,
    theme = reactable.theme, 
    style = "height: 80vh;",
    sortable = T,
    showSortable = F,
    resizable = T,
    wrap = T,
    filterable = T,
    pagination = T,
    showPagination = T,
    paginationType = "jump",
    showPageSizeOptions = T,
    highlight = T,
    outlined = T,
    defaultColDef = colDef(
      header = function(value) gsub(".", " ", value, fixed = TRUE),
      align = "center",
      headerStyle = list(background = "#f7f7f8")
    )
  )
}

reactable_filter_summary_alt <- function() {
  reactable(
    data = data.frame(Filter = NA_character_, Filter.Value = NA_character_),
    theme = reactable.theme, 
    style = "height: 80vh;",
    sortable = T,
    showSortable = F,
    resizable = T,
    wrap = T,
    filterable = T,
    pagination = T,
    showPagination = T,
    paginationType = "jump",
    showPageSizeOptions = T,
    highlight = T,
    outlined = T,
    defaultColDef = colDef(
      header = function(value) gsub(".", " ", value, fixed = TRUE),
      align = "center",
      headerStyle = list(background = "#f7f7f8")
    )
  )
}
