#' apply_theme
#'
#' Applies the default ggquartz theme to all plots
#' @export
#' @import ggplot2
apply_theme <- function() {
    update_geom_defaults("line", list(size = 1.5, alpha = 0.8))
    update_geom_defaults("point", list(size = 2.5))
    update_geom_defaults("area", list(alpha = 0.7))
    ggthemr::ggthemr("flat")
}