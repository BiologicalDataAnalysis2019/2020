#' Generates map of specimen locality information
#' 
#' @param Longitude longitudinal coordinate (numeric)
#' @param Latitude latitudinal coordinate (numeric)
#' @param world the specific map used for referencing (graphic)
#' @return map of specimen localities (graphic)

sirens_coord <- select(sirens, Longitude, Latitude) %>% 
  na.omit()
world <- ne_countries(scale = "medium", returnclass = "sf")
ggplot(data = world) +
  geom_sf() +
  geom_point(data = sirens_coord, mapping = aes(x = Longitude, y = Latitude), color = "blue") +
  coord_sf(xlim = c(-110, -75), ylim = c(22, 50), expand = FALSE)
