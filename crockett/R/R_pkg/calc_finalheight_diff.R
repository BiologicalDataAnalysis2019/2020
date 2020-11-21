#'Calculate final plant height into new column
#'
#'@param ecotox name of tibble 'ecotox' (tibble, no default)
#'@param HEIGHT_F final height of plant in cm (numeric, no default)
#'@param HEIGHT_I initial height of plant in cm (numeric, no default)
#'@return difference (numeric)
#'
#'@examples 
#'calc_finalheight_diff (HEIGHT_F-HEIGHT_I)
#'
calc_finalheight_diff <- function(data = ecotox,
                                  HEIGHT_F = ecotox$HEIGHT_F,
                                  HEIGHT_I = ecotox$HEIGHT_I)
{assert_that(is.numeric(HEIGHT_F))
  assert_that(is.numeric(HEIGHT_I))
  fh_diff <- data %>% mutate(fh_diff = 
                              (ecotox$HEIGHT_F
                               -ecotox$HEIGHT_I))
return(fh_diff)}