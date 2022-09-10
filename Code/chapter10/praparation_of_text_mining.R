library(dplyr)
# 1.
install.packages("multilinguer")
library(multilinguer)
install_jdk()
install.packages("rJava")

# 2.
install.pakcages(c("stringr", "hash", "tau", "Sejong", "RSQLite",
                   "devtools"), type = "binary")

# 3.
install.pakcages("remotes")
#remotes::install_github("haven-jeon/KoNLP",
#                        upgrade = "never",
#                        INSTALL_opts = c("--no-multiarch"))

library(KoNLP)

# 4.
useNIADic()

# 5.
txt <- readLines("hiphop.txt", encoding = "UTF-8")
head(txt)

# 6.
install.pakcages("stringr")
library(stringr)

txt <- str_replace_all(txt, "\\W", " ")