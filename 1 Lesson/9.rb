# Дан целочисленный массив. Заменить все положительные элементы на значение минимального.
a = [3, 8, 5, 2, 10, 6, 7, 1, 9, 4]
def change(a)
  min = a.min
  a.map do |x|
    x > 0 ? min : x
  end
end
print change(a)
