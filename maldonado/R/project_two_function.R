#' Run a linear model fit for two numerical variables
#'
#'@param predictor Numerical variable1 that (numerical, default = weight)
#'@param response Numerical variable2 that (numerical, default = length)
#'@param data Data frame to pull variables from (data.frame, default = data)
#'@return linear model fit lm_fit
#'
#'@example 
#'run_lm(weight ~ length, data)

run_lm <- function(variable1 = weight, variable2 = length, data.frame = data){ lm_fit <- lm(weight ~ length, data)} + return(lm_fit)}
