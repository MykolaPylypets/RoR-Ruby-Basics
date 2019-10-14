#Дан целочисленный массив. Заменить все положительные элементы на значение максимального.

print a = [3, 8, 5, 2, 10, 6, 7, 1, 9, 4]

def change(a)
  max = a.max
  a.map do |x|
    x > 0 ? max : x
  end
end
puts
puts
puts
print change(a)
puts
puts
