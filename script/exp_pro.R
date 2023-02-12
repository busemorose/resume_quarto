exp_pro <- function(employer, job, date, city, desc) {
  
  # List for adding subtitle
  new_row <- list()
  new_row[[employer]] = job
  new_row[[date]] = city
  
  # List for content
  new_content <- list()
  new_content[[employer]] = paste0("\u002D ", desc[1:length(desc)])
  new_content[[date]] = paste0("\u002D ", desc[1:length(desc)])
  
  tibble(!!employer := NA, !!date := NA) |> 
    flextable() |>
    set_table_properties(layout = "autofit", width = 1) |>
    # Add job and city variable as subtitle
    add_header(values = new_row,
               top = FALSE) |>
    # Add content
    add_body(values = new_content) |> 
    # Bold employer
    compose(part = "header",
            i = 1, j = 1,
            value = as_paragraph(as_b(employer))) |> 
    # Italic job
    compose(part = "header",
            i = 2, j = 1,
            value = as_paragraph(as_i(job))) |> 
    # Italic city
    compose(part = "header",
            i = 2, j = 2,
            value = as_paragraph(as_i(city))) |> 
    # Merge
    merge_h() |>
    # Remove padding of all table
    padding(part = "all", padding = 1) |> 
    # Add padding under header section
    padding(i = 2, padding.bottom = 10, part = "header") |> 
    # Remove borders
    border_remove() |>
    align(part = "all", align = "left") |>
    align(part = "all", j = 2, align = "right") |>  
    font(part = "all", fontname = "Lato") |>
    color(part = "all", color = "#212529") |> 
    fontsize(size = 14, part = "header") |>
    fontsize(size = 13.5, part = "body")
}