#Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false.

K = 931
a = [45, 698, 13, 0, 932, -2, 14, 677, 52, 93, 7, -11]
puts
puts "Дан целочисленный массив: #{a}"
puts
puts "Дано число K = #{K}"
puts


puts a.all? {|x| x < K}
puts