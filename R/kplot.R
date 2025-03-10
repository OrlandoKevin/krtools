#' kplot Function
#'
#' This function is a generic method for plotting objects. It uses the `UseMethod` function to dispatch the appropriate method based on the class of the object `x`.
#'
#' @param x An object to be plotted.
#' @param ... Additional arguments to be passed to the plotting method.
#'
#' @return A plot of the object `x`.
#'
#' @export
#'
#' @examples
#' kplot(1:10)
#'
kplot <- function(x, ...) {
  UseMethod("kplot", x)
}

#' @export
#' @rdname kplot
#'
kplot.default <- function(x, ...) {
  plot(x, ...)
}
