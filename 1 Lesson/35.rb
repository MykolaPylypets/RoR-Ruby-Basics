# Дан целочисленный массив. Найти индекс первого минимального элемента.
a = [3, 5, 34, -12, 65, 2, 57, -34, 113, 95, 32, -18, 23]
puts a.select { |x| x < 33 }.first
