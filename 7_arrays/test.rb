#excercise 1
def arr array, entry
  if array.include?(entry)
    puts "yup"
  else
    puts "nup"
  end
end


#excercise 3

arr = [["test", "hello", "world"],["example", "mem"], 5]

puts arr[1][0]

#excercise 4

puts arr.index(5)
#excercise 6
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names

#excercise 7

def plustwo array
  array.map { |i| i += 2}
end
a= [3, 4, 5, 6]
p plustwo a
p a
#excercise 2
#excercise 2
#excercise 2
#excercise 2
