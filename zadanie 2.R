#zad2-1
kwartal_1 <- c("Styczeń","Luty","Marzec")
kwartal_2 <- c("Kwiecień","Maj","Czerwiec")
kwartal_3 <- c("Lipiec","Sierpień","Wrzesień")
kwartal_4 <- c("Październik","Listopad","Grudzień")

rok <- c(kwartal_1,kwartal_2,kwartal_3,kwartal_4)

rok[1:2]  

rok[8:12]   

rok[c(2,4,6,8,10,12)]   

nchar(rok)

mean(nchar(rok))
sd(nchar(rok))

mean(nchar(rok[c(1,2,3,12)]))
sd(nchar(rok[c(1,2,3,12)]))

subset(rok, endsWith(rok,"ec")) 


#zad2-2
manipulacja <- 0
as.numeric(difftime(as.Date("2021-06-30"), Sys.time(), units = "hours"))+manipulacja*365*24

#zad2-3
lata <- c(1800:2018)
for(i in lata){
if(i %% 4 == 0) {if(i %% 100 != 0) {
print(i)}} else if(i %% 400 == 0) {
print(i)
}
}

#zad2-4
n <- 1800
while(n<=2018){
  if((n%%4==0 & n%%100!=0)|n%%400==0){print(n)}
  n <- n+4
}

#zad2-5
 n <- 1800
> while(n<=2018){
if((n%%4==0 & n%%100!=0)|n%%400==0){print(n)}
n <- n+4
}

