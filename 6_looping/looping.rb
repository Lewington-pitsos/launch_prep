# simple loop

def looper x
  loop do
    if x > 18
      exit
    elsif
      x % 2 == 0
      x += 1
      next
    else
      puts "looooping #{x}"
      x += 1
    end
  end
  puts "done"
  return "done"

end


# for loop

for i in 2..9
  puts "fuck"
end
