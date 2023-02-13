# Description

This template can be used to make a summary using Quarto and R. The following softwares/packages are needed:

- R version 4.1.0 (R Core Team, 2021)
- [Quarto](https://quarto.org/docs/download/) (>= 1.3.186) (Allaire, 2022)
- [Flextable R package](https://cran.r-project.org/web/packages/flextable/index.html) (>= 0.8.5) (Gohel and Skintzos, 2023)
- [Tibble R package](https://cran.r-project.org/web/packages/tibble/index.html) (>= 3.1.8) (Müller and Wickham, 2022)

All the editable parts are in *resume.qmd*. Each element in the first three sections are formatted using tables thanks to the **flextable** R package. Two R fonctions are used (`exp_pro()` and `exp_school()`) to arrange the table to the desired result.

# Preview 

<sub>

![readme1](https://user-images.githubusercontent.com/75677694/218341194-9c6f78ac-9b95-4917-9226-59a5a2f915d0.gif)
![readme2](https://user-images.githubusercontent.com/75677694/218341197-7e1c883c-d07d-4289-9b4e-e5469659c5d7.gif)
![readme3](https://user-images.githubusercontent.com/75677694/218341220-054e7856-a00b-4242-b8af-3387638efad4.gif)
![readme4](https://user-images.githubusercontent.com/75677694/218341224-4c6de742-e088-4679-b718-45a0201f94c0.gif)

</sub>

# Installation

## In RStudio

1. File → New Project → Version Control → Git
    - Repository URL: https://github.com/busemorose/resume_quarto.git
2. Create Project
3. Install the two required R packages

    ```
    if (!require("tibble")) install.packages("tibble")
    if (!require("flextable")) install.packages("flextable")
    ```

4. Open and edit `resume.qmd`
5. Render
6. Open `resume.html` to see your resume

# References

David Gohel and Panagiotis Skintzos (2023). flextable: Functions for Tabular Reporting. R package version 0.8.5. https://CRAN.R-project.org/package=flextable

JJ Allaire (2022). quarto: R Interface to 'Quarto' Markdown Publishing System. R package version 1.2. https://CRAN.R-project.org/package=quarto

Kirill Müller and Hadley Wickham (2022). tibble: Simple Data Frames. R package version 3.1.8. https://CRAN.R-project.org/package=tibble

R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.
