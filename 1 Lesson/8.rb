#Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.


print @ary = (1..12).to_a.shuffle
puts
puts
puts

def adder
   print @ary.first, ' '
   @ary.index(@ary.first)+1.upto(@ary.rindex(@ary.last)-1) do |i|
     case @ary[i] %2 == 1
       when true
         print @ary[i]+=@ary.first, ' '
       else print @ary[i], ' '
     end
   end
   puts @ary.last
 end

puts adder
puts
