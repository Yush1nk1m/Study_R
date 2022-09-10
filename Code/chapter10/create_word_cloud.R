# 1.
install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

# 2.
pal <- brewer.pal(8, "Dark2")

# 3.
set.seed(1234)

# 4.
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(4, 0.3),
          colors = pal)

# 5.
pal <- brewer.pal(9, "Blues")[5 : 9]
set.seed(1234)

wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(4, 0.3),
          colors = pal)
