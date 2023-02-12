exp_school <- function(employer, desc, date) {
  
  # List for content
  new_content <- list()
  new_content[[employer]] = desc[1:length(desc)]
  new_content[[date]] = desc[1:length(desc)]
  
  tibble(!!employer := NA, !!date := NA) |> 
    flextable() |>
    set_table_properties(layout = "autofit", width = 1) |>
    # Add content
    add_body(values = new_content) |>
    # Bold employer
    compose(part = "header",
            i = 1, j = 1,
            value = as_paragraph(as_b(employer))) |> 
    # Merge
    merge_h() |>
    # Remove padding of all table
    padding(part = "all", padding = 1) |> 
    # Add padding under header section
    padding(i = 1, padding.bottom = 10, part = "header") |> 
    # Remove borders
    border_remove() |>
    align(part = "all", align = "left") |>
    align(part = "all", j = 2, align = "right") |>  
    font(part = "all", fontname = "Lato") |>
    color(part = "all", color = "#212529") |> 
    fontsize(size = 14, part = "header") |>
    fontsize(size = 13.5, part = "body")
}
