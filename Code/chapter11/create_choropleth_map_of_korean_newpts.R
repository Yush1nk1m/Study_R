options(encoding = "UTF-8")

str(changeCode(tbc))

tbc$name <- iconv(tbc$name, "UTF-8", "UTF-8")

ggChoropleth(data = tbc,
             aes(fill = NewPts,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)

