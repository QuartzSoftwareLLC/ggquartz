#' Applies the default ggquartz theme to all plots
#' 
#' @export
#' @import ggplot2
#' @examples
#' apply_theme()
#' data.frame(x = rnorm(16), y = rnorm(16), z= factor(1:16)) |> ggplot(theme = ., aes(x= 1, y = y, group = z, fill = z, color = z)) + geom_bar(stat = "identity")
apply_theme <- function() {
    update_geom_defaults("line", list(size = 1, alpha = 0.8))
    update_geom_defaults("point", list(size = 2.5))
    update_geom_defaults("area", list(alpha = 0.7))
    ggthemr::ggthemr("flat")
    original <- ggthemr::swatch()
    ggthemr::ggthemr("dust")
    second <- ggthemr::swatch()
    # ggthemr::lighten_swatch(amount = 0.20)
    # third <- ggthemr::swatch()
    ggthemr::ggthemr(ggthemr::define_palette(swatch = c("#3D4D63", "#2E95D8", "#2ACC70", "#F2C416", "#EF5345", "#9653B0", "#2EBA9B", "#F29B00", "#DC561C", "#F900B9", "#4B1CFF", "#FDB6C3", "#EB00FC", "#65680D", "#C5EF22", "#950D47", "#D4E2FF", "#1CFF22", "#E0E5C1", "#32E9FF", "#FB84D5", "#FB0D0D", "#FF1684", "#91550D", "#9A86FE", "#76325F", "#FF8A8D", "#FDCA95", "#9BC563", "#F3BDFD", "#BF00B5", "#9E0DD4", "#8F7972", "#266347", "#FE60A3", "#32409F"), gradient = c(lower = "red", upper = "green")))
}
