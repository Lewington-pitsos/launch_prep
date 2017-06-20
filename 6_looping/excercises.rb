#Excercise 1
a = [4, 5, 6]
print (a.each do |i|
  i * i
end)

#Excercise 2
def lpo
  loop do
    print "hail mary pass"
    w = gets.chomp
    if w == "stop"
      break

    end
  end
end


#Excercise 3

def index array
  x = 0
  array.each do |i|

    puts "#{i} : #{x}"
    x += 1
  end
end



#Excercise 4

def zero num
  if num == 0
    puts "done"
  else
    puts num
    zero num-1
  end
end

zero 40
#Excercise 1
#Excercise 1
