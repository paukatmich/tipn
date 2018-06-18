#zad4-1
read_file("zad4-1.txt")

#zad4-2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cty,
                           y = displ)) +
  labs(title = "Zadanie 1", x = "spalanie w mieście (mile/galon)", y = "pojemność silnika (litry)")

#zad4-3
ggplot(data = mpg) +
  geom_bar(mapping = aes(x = class, fill = class),
           show.legend = FALSE) +
  labs(title = "Liczebność samochodów w poszeczególnych klasach", x = "Klasa", y = "Liczba samochodów")

#zad4-4
ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ), binwidth = 0.2) +
  labs(title = "Rozkład pojemności silnika", x = "Pojemność silnika (litry)", y = "Liczba samochodów") +
  scale_x_continuous(breaks = seq(1, 8, 0.5))


#zad4-5
ggplot(data = mpg, aes(x = class, y = displ)) +
  geom_boxplot() +
  coord_flip() +
  labs(title = "Klasa samochodu a pojemność silnika", x = "Typ samochodu", y = "Pojemność silnika") +
  scale_y_continuous(breaks = seq(1, 8, 0.5))
