# Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.
a = [3, -8, -5, 2, -10, 6, -7, 1, 9, 4]
def change(a)
  max = a.max
  a.map do |x|
    x < 0 ? max : x
  end
end
print change(a)
