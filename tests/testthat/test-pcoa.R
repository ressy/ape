context("test-pcoa")

test_that("pcoa works for negative and zero eigenvalues", {
  mat <- matrix(c(
    0, 1, 2, 5,
    1, 0, 3, 2,
    2, 3, 0, 1,
    5, 2, 1, 0),
    nrow = 4, byrow = TRUE)
  res <- pcoa(mat)
  vectors_expected <- matrix(c(
     2.4865036, -0.2594225,
     0.4508891,  1.4306289,
    -0.4508891, -1.4306289,
    -2.4865036,  0.2594225),
    nrow = 4, byrow = TRUE,
    dimnames = list(c(), c("Axis.1", "Axis.2"))
    )
  testthat::expect_equal(res$vectors, vectors_expected)
})