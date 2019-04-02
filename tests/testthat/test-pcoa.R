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

test_that("pcoa works for negative eigenvalues without zeros", {
  # An example we happened to come across.
  # This produces a negative eigenvalue but no zeros.
  mat <- matrix(c(
    0,          59633.81,  42459.76,    564168.2,  670052.05,
    59633.81,   0,         37536.54,    597805.81, 698804.26,
    42459.76,   37536.54,  0,           572604.99, 677570.94,
    564168.2,   597805.81, 572604.99,   0,         634495.37,
    670052.05,  698804.26, 677570.94,   634495.37, 0),
    nrow = 5)
  res <- pcoa(mat)
  vectors_expected <- matrix(c(
    -199622.580626,  -38512.363296,  28532.5064323,  2233.399746,
    -233618.667501,  -52454.021499, -17596.4841040,  11076.68935,
    -208872.298131,  -41919.649398,  -9515.3477495, -13829.76118,
    199250.430648,  359375.180314,   -929.9073032,    349.89628,
    442863.115610, -226489.146121,   -490.7672755,    169.77580),
    nrow = 5, byrow = TRUE,
    dimnames = list(c(), paste("Axis", 1:4, sep = "."))
  )
  expect_equal(res$vectors, vectors_expected)
})
