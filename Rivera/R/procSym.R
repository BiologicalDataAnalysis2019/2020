#' Performs Procrustes superimposition including sliding of semi-landmarks on curves/outlines in 2D and 3D
#' 
#' @param dataarray Input K x m x n real array, where k is the number of points, ms is the number of dimensions, and n is the sample size. longitudinal coordinate (numeric)
#' @param scale logical: indicating is squaling is requested to minimize the General Procrustes distance
#' @param use.lm vector of integers to define a subset of landmarks to be used for Procrustes registration the specific map used for referencing (graphic)
#' @return a vector containing the Centroid Size of the configurations (graphic)
#' 
procSym(dataarray, scale = TRUE, reflect = TRUE, CSinit = TRUE,
        orp = TRUE, tol = 1e-05, pairedLM = NULL, sizeshape = FALSE,
        use.lm = NULL, center.part = FALSE, weights = NULL,
        centerweight = FALSE, pcAlign = TRUE, distfun = c("angle",
                                                          "riemann"), SMvector = NULL, outlines = NULL, deselect = FALSE,
        recursive = TRUE, iterations = 0, initproc = FALSE,
        bending = TRUE, stepsize = 1)