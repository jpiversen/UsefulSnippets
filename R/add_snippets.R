

#' Add useful snippets
#'
#' This function creates or edits an r.snippets file with custom snippets. After
#' running this function you will have functions for creating a conection object
#' for databses and for setting common options.
#'
#'
#' @return Nothing. Creates or modifies a file with custom snippets.
#' @export
#'
#' @examples
#' # Not run
#' if (FALSE) add_snippets()
add_snippets <- function() {

  # Logic stolen from usethis::edit_rstudio_snippets()
  # https://github.com/cstepper/usethis/blob/master/R/edit.R
  if (rstudioapi::versionInfo()$version < "1.3") {
    path <- fs::path_home_r(".R", "snippets", fs::path_ext_set("r", "snippets"))
  } else {
    if (.Platform$OS.type == "windows") {
      path <- fs::path_home_r("AppData/Roaming/Rstudio", "snippets", fs::path_ext_set("r", "snippets"))
    } else {
      path <- fs::path_home_r(".config/rstudio", "snippets", fs::path_ext_set("r", "snippets"))
    }
  }


  the_snippet <- '

# The snippets below are created with <package name>::add_snippets()

snippet snippet_options
\t# Set options
\toptions(
\t\tencoding = "UTF-8",
\t\tscipen = 9999 # limits the use of scientific numbers, e.g. 1+e6
\t)


snippet snippet_connection
\tlibrary(DBI)
\tlibrary(odbc)
\t
\t# Set connection
\tServer <- "${1:server}"
\tDatabase <- "${2:database}"
\tDriver <- "${3:driver}"
\t
\t# Create conection object
\tconn <- dbConnect(
\t\todbc(),
\t\tdriver = Driver,
\t\tdatabase = Database,
\t\tserver = Server,
\t\tencoding = "Windows-1252",
\t\ttrusted = TRUE
\t)

# End of snippets created by <package name>::add_snippets()

'

  cat(the_snippet, file = path, append = TRUE)

}











