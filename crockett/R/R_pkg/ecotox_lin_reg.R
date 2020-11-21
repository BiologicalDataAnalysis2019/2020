#'Create visualization - linear regression 
#'
#'@param ecotox name of tibble 'ecotox' (tibble, no default)
#'@param rs_ratio ratio of root (belowground biomass) to shoot (above-ground biomass)(numeric, no default)
#'@param fh_diff heightchange of plant in cm (numeric, no default)
#'@param DOSE dose of ammonium in ppm (numeric, no default)
#'@return linear_regression (graph)
#'@importFrom ggplot2 geom_smooth
#'@importFrom assertthat assert_that
#'
#'@export
#'
#'
ecotox_lin_reg <- function(data = ecotox,
                           rs_ratio = ecotox$rs_ratio,
                           fh_diff = ecotox$fh_diff,
                           DOSE = ecotox$DOSE, lm = lm(rs_ratio~fh_diff, ecotox))
{assertthat::assert_that(is.data.frame(ecotox))
  linear_regression <- ggplot(ecotox, mapping = aes (x=fh_diff, y=rs_ratio)) + geom_smooth(method = "lm", color = "navy", size = 1, fill = "deeppink4") +labs(x = "Plant Height Increase (cm)", y = "Root/Shoot Ratio (g/m^2)", title = "Linear Regression to Predict Root to Shoot Ratio Based on Plant Height Increase Across Ammonium Dose (ppm)") + annotate("text", x=20, y=1.5, label = "R^2 ==0.464", parse=T, color ="firebrick", size = 4) + theme_bw() + facet_wrap(vars(DOSE)) + theme(axis.text.x = element_text(size= 16)) +theme(axis.text.y = element_text(size= 16))
  return(linear_regression)}