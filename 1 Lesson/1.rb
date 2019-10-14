#Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
print "Исходный массив: "
print a = (-3..6).to_a.shuffle
puts
puts
print a.select.with_index {|x,i| i%2 == 0} + a.select.with_index {|x,i| i%2 == 1}
puts
puts
