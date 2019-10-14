#Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
print "Исходный массив: "
print a = (-3..6).to_a.shuffle
puts
puts
print a.select.with_index {|x,i| i%2 == 1} + a.select.with_index {|x,i| i%2 == 0}
puts
puts
