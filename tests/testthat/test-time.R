test_that("what_time() funciona", {
  expect_type(what_time(), "character")
  expect_snapshot(what_time("FR"), error = TRUE)
}
)

test_that(
  withr::local_options(digits = 3)
)
