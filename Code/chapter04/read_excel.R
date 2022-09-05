# 3.
install.packages("readxl")
library(readxl)

# 4.
df_exam <- read_excel("excel_exam.xlsx")
df_exam

# 5.
mean(df_exam$english)

mean(df_exam$science)

# -
df_exam_novar <- read_excel("excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet
