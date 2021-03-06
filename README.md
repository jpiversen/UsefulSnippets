
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Useful Snippets

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![packageversion](https://img.shields.io/badge/Package%20version-0.0.2-orange.svg?style=flat-square)](commits/master)
[![Last-changedate](https://img.shields.io/badge/last%20change-2020--08--29-yellowgreen.svg)](/commits/master)

## About

This R package has one main function: `add_snippets()`. This function
will modify you r.snippet file for custom code snippets, or add such a
file if you don’t have one. It will add useful snippets which I myself
use a lot.

## Installation

Install the package from GitHub with the following code:

``` r
devtools::install_github("jpiversen/UsefulSnippets")
```

After installing the package, run:

``` r
UsefulSnippets::add_snippets()
```

Now the snippets should be installed at your computer.

## What do the snippets do?

Currently, the following snippets are included:

| Snippet             | Description                                  |
| :------------------ | :------------------------------------------- |
| snippet\_connection | Create a connection object to a SQL Database |
| snippet\_options    | Common options I set in most R scripts       |

## Support functions

The package also include the following support functions:

  - `find_snippet_path()` - Returns the path to where your custom
    r.snippet file is located, or should be located if no such file
    exists \* `custom_snippet_file_exsists()` - Checks whether a custom
    r.snippet file exists

## Deleting the snippets

If you want to delete the custom snippets, you can use the following
code to find where the file is located:

``` r
UsefulSnippets::find_snippet_path()
```

If you open this file it should be clear which snippets were generated
by UsefulSnippets, and which you had already.

If you want to restore your snippets to the original ones shipped with
RStudio, you can delete the file.

You can also make changes directly from RStudio by opening:

> Tools –\> Global Options –\> Code –\> Edit snippets

## Contributing

If you have useful code snippets you use often you are welcome to add
them to the package and submit them in a PR with me on review.

## Future plans

The plan is to ultimately include a full ML setup as a snippet, to get
quickly up and running when building predictive models.

## Version / change log

  - 0.0.1 - Added the base function, `add_snippets()`
  - 0.0.2 - Added support functions `find_snippet_path()` and
    `custom_snippet_file_exsists()`
