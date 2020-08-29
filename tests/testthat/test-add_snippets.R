

# TODO: Add test(s) for add_snippets()


# Supporting functions ----------------------------------------------------

context("Supporting functions")

# rstudioapi doesn't work when using testthat, so we make a local mock function
# which return the version "1.3.959"
local_mock(
  `rstudioapi::versionInfo` = function() {

    list(
      version = "1.3.959",
      class = c("package_version", "numeric_version")
    )

  }
)

test_that("Test that supporting functions give output", {

  expect_false(is.na(find_snippet_path()))
  expect_false(is.na(custom_snippet_file_exsists()))

})


test_that("Test output type of supporting functions", {

  expect_true(is.character(find_snippet_path()))
  expect_true(is.logical(custom_snippet_file_exsists()))

})





