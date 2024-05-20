library(rvest)
library(dplyr)
library(janitor)
library(tidyverse)
###################
######ENGLAND######
###################
eplhome <-read_html("https://www.soccerstats.com/homeaway.asp?league=england") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
eplhome$X1 <- as.character(eplhome$X1)
eplhome[1,1] <- "Position"
eplhome[1,2] <- "Team"
eplhome<- row_to_names(eplhome,1)
eplhome[,c(3:10)] <- lapply(eplhome[,c(3:10)], as.numeric)
eplhome<- eplhome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))

eplaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=england") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
eplaway$X1 <- as.character(eplaway$X1)
eplaway[1,1] <- "Position"
eplaway[1,2] <- "Team"
eplaway<- row_to_names(eplaway,1)
eplaway[,c(3:10)] <- lapply(eplaway[,c(3:10)], as.numeric)
eplaway<- eplaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))

chphome <-read_html("https://www.soccerstats.com/homeaway.asp?league=england2") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
chphome$X1 <- as.character(chphome$X1)
chphome[1,1] <- "Position"
chphome[1,2] <- "Team"
chphome<- row_to_names(chphome,1)
chphome[,c(3:10)] <- lapply(chphome[,c(3:10)], as.numeric)
chphome<- chphome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
chphome[chphome== "QP Rangers"] <- "QPR"

chpaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=england2") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
chpaway$X1 <- as.character(chpaway$X1)
chpaway[1,1] <- "Position"
chpaway[1,2] <- "Team"
chpaway<- row_to_names(chpaway,1)
chpaway[,c(3:10)] <- lapply(chpaway[,c(3:10)], as.numeric)
chpaway<- chpaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
chpaway[chpaway== "QP Rangers"] <- "QPR"
###################
#######ITALY#######
###################
srahome <-read_html("https://www.soccerstats.com/homeaway.asp?league=italy") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
srahome$X1 <- as.character(srahome$X1)
srahome[1,1] <- "Position"
srahome[1,2] <- "Team"
srahome<- row_to_names(srahome,1)
srahome[,c(3:10)] <- lapply(srahome[,c(3:10)], as.numeric)
srahome<- srahome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))

sraaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=italy") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
sraaway$X1 <- as.character(sraaway$X1)
sraaway[1,1] <- "Position"
sraaway[1,2] <- "Team"
sraaway<- row_to_names(sraaway,1)
sraaway[,c(3:10)] <- lapply(sraaway[,c(3:10)], as.numeric)
sraaway<- sraaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
###################
#######SPAIN#######
###################
lalhome <-read_html("https://www.soccerstats.com/homeaway.asp?league=spain") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
lalhome$X1 <- as.character(lalhome$X1)
lalhome[1,1] <- "Position"
lalhome[1,2] <- "Team"
lalhome<- row_to_names(lalhome,1)
lalhome[,c(3:10)] <- lapply(lalhome[,c(3:10)], as.numeric)
lalhome<- lalhome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))

lalaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=spain") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
lalaway$X1 <- as.character(lalaway$X1)
lalaway[1,1] <- "Position"
lalaway[1,2] <- "Team"
lalaway<- row_to_names(lalaway,1)
lalaway[,c(3:10)] <- lapply(lalaway[,c(3:10)], as.numeric)
lalaway<- lalaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
###################
######GERMANY######
###################
bdlhome <-read_html("https://www.soccerstats.com/homeaway.asp?league=germany") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
bdlhome$X1 <- as.character(bdlhome$X1)
bdlhome[1,1] <- "Position"
bdlhome[1,2] <- "Team"
bdlhome<- row_to_names(bdlhome,1)
bdlhome[,c(3:10)] <- lapply(bdlhome[,c(3:10)], as.numeric)
bdlhome<- bdlhome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
bdlhome[bdlhome == "E. Frankfurt"] <- "Frankfurt"

bdlaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=germany") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
bdlaway$X1 <- as.character(bdlaway$X1)
bdlaway[1,1] <- "Position"
bdlaway[1,2] <- "Team"
bdlaway<- row_to_names(bdlaway,1)
bdlaway[,c(3:10)] <- lapply(bdlaway[,c(3:10)], as.numeric)
bdlaway<- bdlaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
bdlaway[bdlaway == "E. Frankfurt"] <- "Frankfurt"
###################
#####ARGENTINA#####
###################
alphome <-read_html("https://www.soccerstats.com/homeaway.asp?league=ARGENTINA") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
alphome$X1 <- as.character(alphome$X1)
alphome[1,1] <- "Position"
alphome[1,2] <- "Team"
alphome<- row_to_names(alphome,1)
alphome[,c(3:10)] <- lapply(alphome[,c(3:10)], as.numeric)
alphome<- alphome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
alphome[alphome == "Barracas C."] <- "Barracas Central"
alphome[alphome == "Defensa y J."] <- "Defensa y Justicia"
alphome[alphome == "T. de Cordoba"] <- "Talleres Cordoba"
alphome[alphome == "I. Rivadavia"] <- "Independiente Rivadavia"
alphome[alphome == "Argentinos Jrs"] <- "Argentinos"
alphome[alphome == "D. Riestra"] <- "Deportivo Riestra"
alphome[alphome == "A. Tucuman"] <- "Atletico Tucuman"
alphome[alphome == ""] <- ""

alpaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=ARGENTINA") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
alpaway$X1 <- as.character(alpaway$X1)
alpaway[1,1] <- "Position"
alpaway[1,2] <- "Team"
alpaway<- row_to_names(alpaway,1)
alpaway[,c(3:10)] <- lapply(alpaway[,c(3:10)], as.numeric)
alpaway<- alpaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
alpaway[alpaway == "Barracas C."] <- "Barracas Central"
alpaway[alpaway == "Defensa y J."] <- "Defensa y Justicia"
alpaway[alpaway == "T. de Cordoba"] <- "Talleres Cordoba"
alpaway[alpaway == "I. Rivadavia"] <- "Independiente Rivadavia"
alpaway[alpaway == "Argentinos Jrs"] <- "Argentinos"
alpaway[alpaway == "D. Riestra"] <- "Deportivo Riestra"
alpaway[alpaway == "A. Tucuman"] <- "Atletico Tucuman"
alpaway[alpaway == ""] <- ""
###################
#######Japan#######
###################
jlhome <-read_html("https://www.soccerstats.com/homeaway.asp?league=japan") %>% html_nodes("table") %>%
  .[[10]] %>%
  html_table()
jlhome$X1 <- as.character(jlhome$X1)
jlhome[1,1] <- "Position"
jlhome[1,2] <- "Team"
jlhome<- row_to_names(jlhome,1)
jlhome[,c(3:10)] <- lapply(jlhome[,c(3:10)], as.numeric)
jlhome<- jlhome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
jlhome[jlhome == "S. Hiroshima"] <- "Sanfrecce Hiroshima"
jlhome[jlhome == "Urawa RD"] <- "Urawa Red Diamonds"
jlhome[jlhome == "Nagoya G."] <- "Nagoya Grampus"
jlhome[jlhome == "C. Sapporo"] <- "Consadole Sapporo"
jlhome[jlhome == "Yokohama M."] <- "Yokohama Marinos"
jlhome[jlhome == "K. Frontale"] <- "Kawasaki Frontale"

jlaway <-read_html("https://www.soccerstats.com/homeaway.asp?league=japan") %>% html_nodes("table") %>%
  .[[11]] %>%
  html_table()
jlaway$X1 <- as.character(jlaway$X1)
jlaway[1,1] <- "Position"
jlaway[1,2] <- "Team"
jlaway<- row_to_names(jlaway,1)
jlaway[,c(3:10)] <- lapply(jlaway[,c(3:10)], as.numeric)
jlaway<- jlaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
jlaway[jlaway == "S. Hiroshima"] <- "Sanfrecce Hiroshima"
jlaway[jlaway == "Urawa RD"] <- "Urawa Red Diamonds"
jlaway[jlaway == "Nagoya G."] <- "Nagoya Grampus"
jlaway[jlaway == "C. Sapporo"] <- "Consadole Sapporo"
jlaway[jlaway == "Yokohama M."] <- "Yokohama Marinos"
jlaway[jlaway == "K. Frontale"] <- "Kawasaki Frontale"
###################
########MLS########
###################
mlshome<- read_html("https://www.soccerstats.com/homeaway.asp?league=usa")%>%html_nodes("table")%>%
  .[[10]]%>%
  html_table()
mlshome$X1 <- as.character(mlshome$X1)
mlshome[1,1] <- "Position"
mlshome[1,2] <- "Team"
mlshome<- row_to_names(mlshome,1)
mlshome[,c(3:10)] <- lapply(mlshome[,c(3:10)], as.numeric)
mlshome<- mlshome%>%mutate(
  GFper = ifelse(GP == 0, 0, GF / GP),
  GAper = ifelse(GP == 0, 0, GA / GP),
  AttStr = ifelse(GP == 0, 0, GFper / mean(GFper)),
  DefStr = ifelse(GP == 0, 0, GAper / mean(GAper)))
mlshome[mlshome == "Atlanta Utd"] <- "Atlanta"
mlshome[mlshome == "Los Angeles FC"] <- "LAFC"
mlshome[mlshome == "New York RB"] <- "NYRB"
mlshome[mlshome == "Nashville SC"] <- "Nashville"
mlshome[mlshome == "DC United"] <- "DC"
mlshome[mlshome == "LA Galaxy"] <- "LAG"
mlshome[mlshome == "Minnesota Utd"] <- "Minnesota"
mlshome[mlshome == "Chicago Fire"] <- "Chicago"
mlshome[mlshome == "New York City"] <- "NYCFC"
mlshome[mlshome == "CF Montreal"] <- "Montreal"
mlshome[mlshome == "Inter Miami"] <- "Miami"
mlshome[mlshome == "Columbus Crew"] <- "Columbus"
mlshome[mlshome == "Real Salt Lake"] <- "Salt Lake"
mlshome[mlshome == "St. Louis City"] <- "St. Louis"
mlshome[mlshome == "Houston Dynamo"] <- "Houston"
mlshome[mlshome == "Colorado Rapids"] <- "Colorado"
mlshome[mlshome == "Sporting KC"] <- "KC"
mlshome[mlshome == "SJ Earthquakes"] <- "SJ"
mlshome[mlshome == "Orlando City"] <- "Orlando"


mlsaway<- read_html("https://www.soccerstats.com/homeaway.asp?league=usa")%>%html_nodes("table")%>%
  .[[11]]%>%
  html_table()
mlsaway$X1 <- as.character(mlsaway$X1)
mlsaway[1,1] <- "Position"
mlsaway[1,2] <- "Team"
mlsaway<- row_to_names(mlsaway,1)
mlsaway[,c(3:10)] <- lapply(mlsaway[,c(3:10)], as.numeric)
mlsaway<- mlsaway%>%mutate(
  GFper = ifelse(GP == 0, 0, GF / GP),
  GAper = ifelse(GP == 0, 0, GA / GP),
  AttStr = ifelse(GP == 0, 0, GFper / mean(GFper)),
  DefStr = ifelse(GP == 0, 0, GAper / mean(GAper)))
mlsaway[mlsaway == "Atlanta Utd"] <- "Atlanta"
mlsaway[mlsaway == "Los Angeles FC"] <- "LAFC"
mlsaway[mlsaway == "New York RB"] <- "NYRB"
mlsaway[mlsaway == "Nashville SC"] <- "Nashville"
mlsaway[mlsaway == "DC United"] <- "DC"
mlsaway[mlsaway == "LA Galaxy"] <- "LAG"
mlsaway[mlsaway == "Minnesota Utd"] <- "Minnesota"
mlsaway[mlsaway == "Chicago Fire"] <- "Chicago"
mlsaway[mlsaway == "New York City"] <- "NYCFC"
mlsaway[mlsaway == "CF Montreal"] <- "Montreal"
mlsaway[mlsaway == "Inter Miami"] <- "Miami"
mlsaway[mlsaway == "Columbus Crew"] <- "Columbus"
mlsaway[mlsaway == "Real Salt Lake"] <- "Salt Lake"
mlsaway[mlsaway == "St. Louis City"] <- "St. Louis"
mlsaway[mlsaway == "Houston Dynamo"] <- "Houston"
mlsaway[mlsaway == "Colorado Rapids"] <- "Colorado"
mlsaway[mlsaway == "Sporting KC"] <- "KC"
mlsaway[mlsaway == "SJ Earthquakes"] <- "SJ"
mlsaway[mlsaway == "Orlando City"] <- "Orlando"
#################
#####Ecuador#####
#################
esahome<- read_html("https://www.soccerstats.com/homeaway.asp?league=ecuador")%>%html_nodes("table")%>%
  .[[10]]%>%
  html_table()
esahome$X1 <-as.character(esahome$X1)
esahome[1,1]<- "Position"
esahome[1,2]<- "Team"
esahome<- row_to_names(esahome,1)
esahome[,c(3:10)] <-lapply(esahome[,c(3:10)], as.numeric)
esahome<-esahome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
esahome[esahome == "U. Catolica"] <- "Universidad Catolica"
esahome[esahome == "I. del Valle"] <- "Independiente del Valle"
esahome[esahome == "Tecnico U."] <- "Tecnico Universitario"
esahome[esahome == "D. Cuenca"] <- "Deportivo Cuenca"

esaaway<- read_html("https://www.soccerstats.com/homeaway.asp?league=ecuador")%>%html_nodes("table")%>%
  .[[11]]%>%
  html_table()
esaaway$X1 <-as.character(esaaway$X1)
esaaway[1,1]<- "Position"
esaaway[1,2]<- "Team"
esaaway<- row_to_names(esaaway,1)
esaaway[,c(3:10)] <-lapply(esaaway[,c(3:10)], as.numeric)
esaaway<-esaaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
esaaway[esaaway == "U. Catolica"] <- "Universidad Catolica"
esaaway[esaaway == "I. del Valle"] <- "Independiente del Valle"
esaaway[esaaway == "Tecnico U."] <- "Tecnico Universitario"
esaaway[esaaway == "D. Cuenca"] <- "Deportivo Cuenca"
#################
####Colombia#####
#################
cpahome<- read_html("https://www.soccerstats.com/homeaway.asp?league=colombia")%>%html_nodes("table")%>%
  .[[10]]%>%
  html_table()
cpahome$X1 <-as.character(cpahome$X1)
cpahome[1,1]<- "Position"
cpahome[1,2]<- "Team"
cpahome<- row_to_names(cpahome,1)
cpahome[,c(3:10)] <-lapply(cpahome[,c(3:10)], as.numeric)
cpahome<-cpahome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
cpahome[cpahome == "A. Bucaramanga"] <- "Atletico Bucaramanga"
cpahome[cpahome == "D. Pereira"] <- "Deportivo Pereira"
cpahome[cpahome == "R. Aguilas"] <- "Aguilas Doradas Rionegro"
cpahome[cpahome == "A. Nacional"] <- "Atletico Nacional"
cpahome[cpahome == "Jaguares de C."] <- "Jaguares de Cordoba"
cpahome[cpahome == "I. Medelin"] <- "Independiente Medellin"
cpahome[cpahome == "A. Petrolera"] <- "Alianza Petrolera"

cpaaway<- read_html("https://www.soccerstats.com/homeaway.asp?league=colombia")%>%html_nodes("table")%>%
  .[[11]]%>%
  html_table()
cpaaway$X1 <-as.character(cpaaway$X1)
cpaaway[1,1]<- "Position"
cpaaway[1,2]<- "Team"
cpaaway<- row_to_names(cpaaway,1)
cpaaway[,c(3:10)] <-lapply(cpaaway[,c(3:10)], as.numeric)
cpaaway<-cpaaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
cpaaway[cpaaway == "A. Bucaramanga"] <- "Atletico Bucaramanga"
cpaaway[cpaaway == "D. Pereira"] <- "Deportivo Pereira"
cpaaway[cpaaway == "R. Aguilas"] <- "Aguilas Doradas Rionegro"
cpaaway[cpaaway == "A. Nacional"] <- "Atletico Nacional"
cpaaway[cpaaway == "Jaguares de C."] <- "Jaguares de Cordoba"
cpaaway[cpaaway == "I. Medelin"] <- "Independiente Medellin"
cpaaway[cpaaway == "A. Petrolera"] <- "Alianza Petrolera"
#################
####Venezuela####
#################
vpdhome<- read_html("https://www.soccerstats.com/homeaway.asp?league=venezuela")%>%html_nodes("table")%>%
  .[[10]]%>%
  html_table()
vpdhome$X1 <-as.character(vpdhome$X1)
vpdhome[1,1]<- "Position"
vpdhome[1,2]<- "Team"
vpdhome<- row_to_names(vpdhome,1)
vpdhome[,c(3:10)] <-lapply(vpdhome[,c(3:10)], as.numeric)
vpdhome<-vpdhome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
vpdhome[vpdhome == "H. Colmenares"] <- "Hermanos Colmenarez"
vpdhome[vpdhome == "D. La Guaira"] <- "Deportivo La Guaira"
vpdhome[vpdhome == "D. Tachira"] <- "Deportivo Tachira"
vpdhome[vpdhome == "E. Merida"] <- "Estudiantes de Merida"

vpdaway<- read_html("https://www.soccerstats.com/homeaway.asp?league=venezuela")%>%html_nodes("table")%>%
  .[[11]]%>%
  html_table()
vpdaway$X1 <-as.character(vpdaway$X1)
vpdaway[1,1]<- "Position"
vpdaway[1,2]<- "Team"
vpdaway<- row_to_names(vpdaway,1)
vpdaway[,c(3:10)] <-lapply(vpdaway[,c(3:10)], as.numeric)
vpdaway<-vpdaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
vpdaway[vpdaway == "H. Colmenares"] <- "Hermanos Colmenarez"
vpdaway[vpdaway == "D. La Guaira"] <- "Deportivo La Guaira"
vpdaway[vpdaway == "D. Tachira"] <- "Deportivo Tachira"
vpdaway[vpdaway == "E. Merida"] <- "Estudiantes de Merida"
#################
####Costa Rica###
#################
fpdhome<- read_html("https://www.soccerstats.com/homeaway.asp?league=costarica")%>%html_nodes("table")%>%
  .[[10]]%>%
  html_table()
fpdhome$X1 <-as.character(fpdhome$X1)
fpdhome[1,1]<- "Position"
fpdhome[1,2]<- "Team"
fpdhome<- row_to_names(fpdhome,1)
fpdhome[,c(3:10)] <-lapply(fpdhome[,c(3:10)], as.numeric)
fpdhome<-fpdhome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
fpdhome[fpdhome == "M. Liberia"] <-"Municipal Liberia"

fpdaway<- read_html("https://www.soccerstats.com/homeaway.asp?league=costarica")%>%html_nodes("table")%>%
  .[[11]]%>%
  html_table()
fpdaway$X1 <-as.character(fpdaway$X1)
fpdaway[1,1]<- "Position"
fpdaway[1,2]<- "Team"
fpdaway<- row_to_names(fpdaway,1)
fpdaway[,c(3:10)] <-lapply(fpdaway[,c(3:10)], as.numeric)
fpdaway<-fpdaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
fpdaway[fpdaway == "M. Liberia"] <-"Municipal Liberia"
#################
#######Peru######
#################
plohome<- read_html("https://www.soccerstats.com/homeaway.asp?league=peru")%>%html_nodes("table")%>%
  .[[10]]%>%
  html_table()
plohome$X1 <-as.character(plohome$X1)
plohome[1,1]<- "Position"
plohome[1,2]<- "Team"
plohome<- row_to_names(plohome,1)
plohome[,c(3:10)] <-lapply(plohome[,c(3:10)], as.numeric)
plohome<-plohome%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
plohome[plohome == "D. Garcilaso"] <-"Deportivo Garcilaso"
plohome[plohome == "S. Cristal"] <-"Sporting Cristal"
plohome[plohome == "Comerciantes U."] <-"Comerciantes Unidos"
plohome[plohome == "Alianza A."] <-"Alianza Atletico"
plohome[plohome == "FBC Melgar"] <-"Melgar"

ploaway<- read_html("https://www.soccerstats.com/homeaway.asp?league=peru")%>%html_nodes("table")%>%
  .[[11]]%>%
  html_table()
ploaway$X1 <-as.character(ploaway$X1)
ploaway[1,1]<- "Position"
ploaway[1,2]<- "Team"
ploaway<- row_to_names(ploaway,1)
ploaway[,c(3:10)] <-lapply(ploaway[,c(3:10)], as.numeric)
ploaway<-ploaway%>%mutate(GFper=GF/GP, GAper= GA/GP, AttStr=GFper/(mean(GFper)), DefStr=GAper/(mean(GAper)))
ploaway[ploaway == "D. Garcilaso"] <-"Deportivo Garcilaso"
ploaway[ploaway == "S. Cristal"] <-"Sporting Cristal"
ploaway[ploaway == "Comerciantes U."] <-"Comerciantes Unidos"
ploaway[ploaway == "Alianza A."] <-"Alianza Atletico"
ploaway[ploaway == "FBC Melgar"] <-"Melgar"

# Function to calculate lambdas
calculate_lambdas <- function(home_team, away_team, home_table, away_table) {
  # Extract relevant information for the home team
  home_info <- home_table %>% filter(Team == home_team) 
  home_AttStr <- home_info$AttStr
  home_DefStr <- home_info$DefStr
  home_league_avg <- mean(home_table$GFper)
  
  # Extract relevant information for the away team
  away_info <- away_table %>% filter(Team == away_team)
  away_AttStr <- away_info$AttStr
  away_DefStr <- away_info$DefStr
  away_league_avg <- mean(away_table$GFper)
  
  # Example: Replace this with your desired calculation
  lambda_home <- home_AttStr * away_DefStr * home_league_avg
  lambda_away <- away_AttStr * home_DefStr * away_league_avg
  
  return(list(lambda_home = lambda_home, lambda_away = lambda_away))
}

# Function to perform simulation and return probabilities and goal counts
simulate_match <- function(home_team, away_team, home_lambda, away_lambda, simulations = 10000000) {
  # Simulate goal counts
  home_team_goals <- rpois(simulations, home_lambda)
  away_team_goals <- rpois(simulations, away_lambda)
  
  # Calculate win, draw, and loss probabilities
  win_prob <- mean(home_team_goals > away_team_goals) * 100
  Draw <- mean(home_team_goals == away_team_goals) * 100
  loss_prob <- mean(home_team_goals < away_team_goals) * 100
  
  Probabilities<- data.frame(
    win_prob,
    Draw,
    loss_prob
  )
  colnames(Probabilities)[colnames(Probabilities) == "win_prob"] <- home_team
  colnames(Probabilities)[colnames(Probabilities) == "loss_prob"] <- away_team
  
  n <- 0:6
  home_team_goals_distribution <- round(dpois(n, lambda = home_lambda) * 100,5)
  away_team_goals_distribution <- round(dpois(n, lambda = away_lambda) * 100,5)
  Total_goals <- data.frame(
    home_team_goals_distribution,
    Goals = n,
    away_team_goals_distribution
  )
  colnames(Total_goals)[colnames(Total_goals) == "home_team_goals_distribution"] <- home_team
  colnames(Total_goals)[colnames(Total_goals) == "away_team_goals_distribution"] <- away_team
  
  return(list(
    Probabilities = Probabilities,
    Total_goals = Total_goals
  ))
}

# Function to automate the entire process with user input
simulate_match_for_user_input <- function() {
  
  league_input <- readline("Enter the league : ")
  
  # Assuming you have tables named eplhome, eplaway, lalhome, lalaway, itlhome, itlaway, gerhome, geraway
  home_table_input <- get(paste0(tolower(league_input), "home"))
  away_table_input <- get(paste0(tolower(league_input), "away"))
  
  # User inputs for teams and leagues
  home_team_input <- readline("Enter the home team: ")
  away_team_input <- readline("Enter the away team: ")
  
  # Calculate lambdas
  lambdas <- calculate_lambdas(home_team_input, away_team_input, home_table_input, away_table_input)
  
  # Perform simulation
  probabilities <- simulate_match(home_team_input, away_team_input, lambdas$lambda_home, lambdas$lambda_away)
  print("Simulation Results:")
  
  return(probabilities)
}
simulate_match_for_user_input()
