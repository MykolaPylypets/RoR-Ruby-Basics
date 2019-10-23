# Дан целочисленный массив. Найти максимальный из его локальных максимумов.
def locm(a)
  a.each_cons(3).each_with_object([]) do |three, memo|
    memo << three[1] if three[1] > three.first && three[1] > three.last
  end
end

a = (1..20).to_a.shuffle
p a
p locm(a).max
