#' Remove low abundance counts, rareify sample counts, calculate abundances per taxon and
#' tissue type
#'
#' @param obj 'taxmap' object containing tax_data and class_data tibbles
#' @importFrom metacoder zero_low_counts
#' @importFrom taxa filter_obs
#' @importFrom metacoder calc_obs_props
#' @importFrom metacoder calc_taxon_abund
#' @importFrom metacoder calc_n_samples
#' @return obj containing tax_data, class_data, taxon_abundance, and tax_sample tibbles
#' 
#' @example

fung_abund <- function(obj) {
  obj$data$tax_data <- zero_low_counts(obj, data = "tax_data", min_count = 5)
  no_reads <- rowSums(obj$data$tax_data[, spartina_sample$sample_id]) == 0
  sum(no_reads)
  obj <- filter_obs(obj, data = "tax_data", ! no_reads, drop_taxa = TRUE)
  obj$data$tax_data <- calc_obs_props(obj, "tax_data")
  obj$data$taxon_abundance <- calc_taxon_abund(obj, "tax_data",
                                               cols = spartina_sample$sample_id)
  obj$data$tax_sample <- calc_n_samples(obj, "taxon_abundance", groups = spartina_sample$tissue)
  return(obj)
}

obj_complete <- fung_abund(obj)
print(obj_complete)

