puts "age plz"
age = gets.chomp
add = 10
4.times do
  puts "in #{add} years you will be #{age.to_i + add}"
  add += 10
end
