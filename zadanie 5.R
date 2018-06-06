library(tidyverse)
	
#zad5-1
mvs <- read.csv("movies.csv") %>%
	  as.tibble()
	
#zad5-2
filter(mvs, Comedy == 1, year == 2005) %>%
 print()
	
#zad5-3
select(mvs, title, year, budget) %>%
	arrange(desc(budget))
	
#zad5-4
filter(mvs, year > 1990 & year < 1999, rating > 9.0, Animation == 1) %>%
	arrange(desc(rating)) %>%
	select(title, rating)
	
#zad5-5 
filter(mvs, Drama == 1) %>%
	arrange(desc(length)) %>%
	top_n(10, length) %>%
	select(title, length)
	
#zad5-6
group_by(mvs, mpaa) %>%
	summarise(SR_OCEN = mean(rating), SD_OCEN = sd(rating))
