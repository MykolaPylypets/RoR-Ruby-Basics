#Дан целочисленный массив. Найти количество его локальных минимумов.
puts
print a = (-4..6).to_a.shuffle
puts
puts
p( (1..a.size-2).to_a.select{ |i| (a[i-1] > a[i]) && (a[i] < a[i+1]) }.size )
puts
