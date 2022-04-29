create_palette <- function(options) \(n) rep(options,n)[seq(n)]

#' scale_target
#' creates a shape and size scale for plotting targets in ggplot2
#' @export 
#' @importFrom ggplot2 discrete_scale
#' @examples
#' data.frame(x = rnorm(20), y = rnorm(20), z= factor(c(rep(1, 15), rep(2, 5)))) %>%
#'    ggplot(aes(x = x, y = y, shape = z, size = z, color = z)) +
#'    scale_target() +
#'    geom_point()
scale_target <- function(..., size = 1) {
  list(discrete_scale("shape", "shape_de", create_palette(c("\u2B24", "\u29BF")), ...),
    discrete_scale("size", "size_de", create_palette(c(1 + size, 1 + size))))
}
