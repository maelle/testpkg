expect_length <- function(object, n) {
  # 1. Capture object and label
  act <- testthat::quasi_label(rlang::enquo(object), arg = "object")

  # 2. Call expect()
  act$n <- length(act$val)
  message(praise::praise())
  testthat::expect(
    act$n == n,
    sprintf("%s has length %i, not length %i.", act$lab, act$n, n)
  )

  # 3. Invisibly return the value
  invisible(act$val)
}
