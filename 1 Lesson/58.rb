# Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.
a = [18, 22, 99, -3, 178, 121, 32, 76, -5, 8, 34, 2]
puts a.rindex { |x| x == a.min || x == a.max }
