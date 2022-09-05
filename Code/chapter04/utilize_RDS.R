# 1.
saveRDS(df_midterm, file = "df_midterm.rds")

# 2.
rm(df_midterm)

df_midterm

df_midterm <- readRDS("df_midterm.rds")

df_midterm
