# Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.
print a = [4, 2, -3, 8, 6, -3, 5, 7, -2, -1, 1, 0]
puts a.reverse.rindex(a.min)
