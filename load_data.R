
library(readxl)


lst <- list()

# 2013-awarded-grants-rm3.xlsx
rank <- read_excel("2013-awarded-grants-rm3.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

colnames(rank)[2] <- "Priority"

rank$Panel[grep("13RM3 A", rank$Panel)] <- "A"
rank$Panel[grep("13RM3 B", rank$Panel)] <- "B"
rank$Panel[grep("13RM3 C", rank$Panel)] <- "C"
rank$Panel[grep("13RM3 D", rank$Panel)] <- "D"

lst[["2013-rm3"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2013-rm3"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2013-rm3"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2013-rm3"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2013-awarded-grants-rm3.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2013-rm3"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2013-rm3"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2013-rm3"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2013-rm3"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]



# 2014-awarded-grants-rm1.xlsx
rank <- read_excel("2014-awarded-grants-rm1.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

colnames(rank)[2] <- "Priority"

rank$Panel[grep("14RM1 A", rank$Panel)] <- "A"
rank$Panel[grep("14RM1 B", rank$Panel)] <- "B"
rank$Panel[grep("14RM1 C", rank$Panel)] <- "C"
rank$Panel[grep("14RM1 D", rank$Panel)] <- "D"

lst[["2014-rm1"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2014-rm1"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2014-rm1"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2014-rm1"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2014-awarded-grants-rm1.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2014-rm1"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2014-rm1"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2014-rm1"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2014-rm1"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]



# 2014-awarded-grants-rm2.xlsx
rank <- read_excel("2014-awarded-grants-rm2.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

rank$Panel[grep("14RM2 A", rank$Panel)] <- "A"
rank$Panel[grep("14RM2 B", rank$Panel)] <- "B"
rank$Panel[grep("14RM2 C", rank$Panel)] <- "C"
rank$Panel[grep("14RM2 D", rank$Panel)] <- "D"

lst[["2014-rm2"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2014-rm2"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2014-rm2"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2014-rm2"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2014-awarded-grants-rm2.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2014-rm2"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2014-rm2"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2014-rm2"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2014-rm2"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]



# 2014-awarded-grants-rm3.xlsx
rank <- read_excel("2014-awarded-grants-rm3.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

rank$Panel[grep("14RM3 A", rank$Panel)] <- "A"
rank$Panel[grep("14RM3 B", rank$Panel)] <- "B"
rank$Panel[grep("14RM3 C", rank$Panel)] <- "C"
rank$Panel[grep("14RM3 D", rank$Panel)] <- "D"

lst[["2014-rm3"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2014-rm3"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2014-rm3"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2014-rm3"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2014-awarded-grants-rm3.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2014-rm3"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2014-rm3"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2014-rm3"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2014-rm3"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]




# 2015-awarded-grants-rm1.xlsx
rank <- read_excel("2015-awarded-grants-rm1.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

rank$Panel[grep("15RM1 A", rank$Panel)] <- "A"
rank$Panel[grep("15RM1 B", rank$Panel)] <- "B"
rank$Panel[grep("15RM1 C", rank$Panel)] <- "C"
rank$Panel[grep("15RM1 D", rank$Panel)] <- "D"

lst[["2015-rm1"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2015-rm1"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2015-rm1"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2015-rm1"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2015-awarded-grants-rm1.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2015-rm1"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2015-rm1"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2015-rm1"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2015-rm1"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]




# 2015-awarded-grants-rm2.xlsx
rank <- read_excel("2015-awarded-grants-rm2.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

rank$Panel[grep("15RM2 A", rank$Panel)] <- "A"
rank$Panel[grep("15RM2 B", rank$Panel)] <- "B"
rank$Panel[grep("15RM2 C", rank$Panel)] <- "C"
rank$Panel[grep("15RM2 D", rank$Panel)] <- "D"

lst[["2015-rm2"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2015-rm2"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2015-rm2"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2015-rm2"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2015-awarded-grants-rm2.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2015-rm2"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2015-rm2"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2015-rm2"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2015-rm2"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]


# 2015-awarded-grants-rm3.xlsx
rank <- read_excel("2015-awarded-grants-rm3.xlsx", "Ranked List", col_types=c("text", "numeric", "text", "text", "text", "text", "text", "text"))
rank[is.na(rank)] <- ""

rank$Panel[grep("15RM3 A", rank$Panel)] <- "A"
rank$Panel[grep("15RM3 B", rank$Panel)] <- "B"
rank$Panel[grep("15RM3 C", rank$Panel)] <- "C"
rank$Panel[grep("15RM3 D", rank$Panel)] <- "D"

lst[["2015-rm3"]][["rank"]][["A"]] <- rank[rank$Panel=="A",]
lst[["2015-rm3"]][["rank"]][["B"]] <- rank[rank$Panel=="B",]
lst[["2015-rm3"]][["rank"]][["C"]] <- rank[rank$Panel=="C",]
lst[["2015-rm3"]][["rank"]][["D"]] <- rank[rank$Panel=="D",]

comm <- read_excel("2015-awarded-grants-rm3.xlsx", "Committee", col_types=c(rep("text",5), "numeric"))

lst[["2015-rm3"]][["funded"]][["A"]] <- comm[comm$Panel=="A",]
lst[["2015-rm3"]][["funded"]][["B"]] <- comm[comm$Panel=="B",]
lst[["2015-rm3"]][["funded"]][["C"]] <- comm[comm$Panel=="C",]
lst[["2015-rm3"]][["funded"]][["D"]] <- comm[comm$Panel=="D",]
