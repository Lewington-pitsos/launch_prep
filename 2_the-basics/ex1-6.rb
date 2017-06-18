#Exceercise 1

first = "louka "
last = "ewington-ptisos"
puts first + last

#excercise 2
def numberfinder num
  a = num / 1000
  num -= a * 1000
  b = num / 100
  num -= b*100
  c = num / 10
  num -= c* 10
  d = num
  puts [a, b, c, d]
end

#excercise 3

w = {:movie1 => 1999, :storm => 1777, :Koalaman => 2001, :BillerKees => 2055}

w.each do |k, v|
  puts v
end

#excercise 4
array = []

w.each do |k, v|
  array.push([k, v])
end

array.each do |i|
  puts i[1]
end

#excercise 5
def factfinder num
  if num == 1
    return num
  else
    return num * factfinder(num - 1)
  end
end

puts factfinder 8

#excercise 6
def square a, b, c
  puts a * a
  puts b * b
  puts c * c
end

square 2.6, 7.7, 34.1
