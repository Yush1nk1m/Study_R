# 1.
extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

# 2.
nouns <- extractNoun(txt)

wordcount <- table(unlist(nouns))

df_word <- as.data.frame(wordcount, stringsAsFactors = F)

df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

# 3.
df_word <- filter(df_word, nchar(word) >= 2)

# 4.
top_20 <- df_word %>%
  arrange(desc(freq)) %>%
  head(20)

top_20
