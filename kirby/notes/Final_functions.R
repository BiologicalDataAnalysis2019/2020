Final Project Functions
#" all are hard coded and would have to change code each time. Would need to create an argument somehow so woudlnt be hard coded

F1

#' input Genus and return subfamily accossiated , built with Genus of Casaleia
#' 
#' @param  data data what is being used (default = FossilAntsData)
#' @return  print of the subfamily accossiated (chr)

genus_subfamily <- function(data = FossilAntsData){
  FossilAntsData %>% 
    filter(Genus== "Casaleia") %>% 
    arrange(subfamily) %>% 
    select(Genus, subfamily) %>% 
    print(subfamily)
}
#' test
genus_subfamily(Casaleia)
# A tibble: 4 x 2
Genus    subfamily    
<chr>    <chr>        
  1 Casaleia Ambyloponinae
2 Casaleia Ambyloponinae
3 Casaleia Ambyloponinae
4 Casaleia Ambyloponinae

F2
#' input Subfamily and retun taxon, built with subfamily of Armaniinae
#' 
#' @param  data data what is being used (default = FossilAntsData)
#' @return print of the taxon related to that subfamily (chr)

subfamily_taxon <- function(data = FossilAntsData){
  FossilAntsData %>% 
    filter(subfamily == "Armaniinae") %>% 
    group_by(taxon) %>% 
    select(subfamily, taxon) %>% 
    print(taxon)
}
#' test
subfamily_taxon(Armaniinae)
# A tibble: 15 x 2
# Groups:   taxon [15]
subfamily  taxon                  
<chr>      <chr>                  
  1 Armaniinae Archaeopone_kzylzharica
2 Armaniinae Archaeopone_taylori    
3 Armaniinae Armania                
4 Armaniinae Armania_capitata       
5 Armaniinae Armania_curiosa        
6 Armaniinae Armania_pristina       
7 Armaniinae Armania_robusta        
8 Armaniinae Dolichomyrma_latipes   
9 Armaniinae Dolichomyrma_longiceps 
10 Armaniinae Khetania_mandibulata   
11 Armaniinae Orapia_minor           
12 Armaniinae Orapia_rayneri         
13 Armaniinae Poneropterus_sphecoides
14 Armaniinae Pseudarmania_aberrans  
15 Armaniinae Pseudarmania_rasnitsyni

F3
#' input genus and get fossile size accossiated and graph
#' built with the genus of Casaleia
#' 
#' @param  data data what is being used (default = FossilAntsData)
#' @return fossile sizes related to that genus and graphs

fossil_size <- function(data = FossilAntsData){
  FossilAntsData %>% 
    filter(Genus== "Casaleia") %>% 
    select(Genus, min_ma, max_ma) %>% 
    print(min_ma, max_ma) %>% 
    ggplot(mapping = aes(x = min_ma, y = max_ma))+ geom_point()
}

#' test- does correct graph
fossil_size(Casaleia)
# A tibble: 4 x 3
Genus    min_ma max_ma
<chr>     <dbl>  <dbl>
  1 Casaleia  40.4    48.6
2 Casaleia   5.33   16.0
3 Casaleia  11.6    12.7
4 Casaleia  33.9    38  