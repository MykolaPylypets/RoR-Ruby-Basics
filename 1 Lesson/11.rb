#Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.

print a = [-3, 8, -5, 2, 10, -6, -7, 1, 9, -4]

def change(a)
  min = a.min
  a.map do |x|
    x < 0 ? min : x
  end
end
puts
puts
puts
print change(a)
puts
puts
