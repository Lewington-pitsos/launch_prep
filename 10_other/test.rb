def hasletter word, letter
  d = word =~ /y/
  if d
    puts "yes"
  else
    puts "no"
  end

  puts d
end



def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end


a = "55"
b = a
a << 'ddsa'



def doblock num, &block
  for i in 0..num
    block.call(i)
  end
end


def adder
  puts "input number to be added"
  num = gets.chomp
  begin
    w = num + 7
    puts w
  rescue
    puts "I don't think that #{num} was a number"
  end
end


adder
