# Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
print a = (-3..6).to_a.shuffle
print a.select.with_index { |_x, i| i.even? } + a.select.with_index { |_x, i| i.odd? }
