# Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
print a = (-3..6).to_a.shuffle
print a.select.with_index { |_x, i| i.odd? } + a.select.with_index { |_x, i| i.even? }
