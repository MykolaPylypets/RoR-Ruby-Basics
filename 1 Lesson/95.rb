#Дан целочисленный массив и число К. Вывести количество элементов, меньших К.

a = (-5..2).to_a
K = 0
puts
puts "Дан целочисленный массив: #{a}"
puts
print "Дано число K: "
puts K
puts
print "Выведем количество элементов, меньших К: "
puts a.count {|x| x < K}
puts
